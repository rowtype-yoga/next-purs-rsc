#!/usr/bin/env node
const { spawn } = require("child_process");
const fs = require("fs");
const path = require("path");

const SRC_DIR = path.resolve(__dirname, "src");

// --- Helpers ---

function run(label, cmd, args) {
  return new Promise((resolve, reject) => {
    const child = spawn(cmd, args, { stdio: ["ignore", "pipe", "pipe"] });
    child.stdout.on("data", (d) =>
      d.toString().split("\n").filter(Boolean).forEach((l) => console.log(`[${label}] ${l}`))
    );
    child.stderr.on("data", (d) =>
      d.toString().split("\n").filter(Boolean).forEach((l) => console.error(`[${label}] ${l}`))
    );
    child.on("close", (code) =>
      code === 0 ? resolve() : reject(new Error(`${cmd} exited with ${code}`))
    );
  });
}

async function build() {
  await run("spago", "spago", ["build"]);
}

async function generateRoutes() {
  await run("routes", "bun", ["generate-routes.js"]);
}

async function rebuild() {
  try {
    console.log("[dev] Rebuilding...");
    await build();
    await generateRoutes();
    console.log("[dev] Rebuild complete.");
  } catch (err) {
    console.error(`[dev] Rebuild failed: ${err.message}`);
    console.error("[dev] Dev server still running with last good build.");
  }
}

// --- Next.js child process ---

let nextChild = null;

function startNextDev() {
  nextChild = spawn("bunx", ["next", "dev"], { stdio: "inherit" });
  nextChild.on("close", (code) => {
    console.log(`[dev] next dev exited (code ${code})`);
    process.exit(code ?? 0);
  });
}

// --- Watcher with debounce + serialization ---

let rebuildTimer = null;
let rebuildRunning = false;
let rebuildQueued = false;

function scheduleRebuild() {
  clearTimeout(rebuildTimer);
  rebuildTimer = setTimeout(async () => {
    if (rebuildRunning) {
      rebuildQueued = true;
      return;
    }
    rebuildRunning = true;
    await rebuild();
    rebuildRunning = false;
    if (rebuildQueued) {
      rebuildQueued = false;
      scheduleRebuild();
    }
  }, 300);
}

function watchSrc() {
  if (!fs.existsSync(SRC_DIR)) {
    console.log("[dev] src/ not found, skipping watcher.");
    return;
  }

  const watcher = fs.watch(SRC_DIR, { recursive: true }, (_event, filename) => {
    if (!filename || !filename.endsWith(".purs")) return;
    console.log(`[dev] Changed: ${filename}`);
    scheduleRebuild();
  });

  watcher.on("error", (err) => console.error("[dev] Watcher error:", err.message));
}

// --- Signal forwarding ---

for (const signal of ["SIGINT", "SIGTERM"]) {
  process.on(signal, () => {
    if (nextChild) nextChild.kill(signal);
    else process.exit(0);
  });
}

// --- Main ---

async function main() {
  console.log("[dev] Initial build...");
  await build();
  await generateRoutes();
  console.log("[dev] Starting next dev...");
  startNextDev();
  watchSrc();
}

main().catch((err) => {
  console.error("[dev] Fatal:", err.message);
  process.exit(1);
});
