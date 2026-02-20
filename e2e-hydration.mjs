import { chromium } from "playwright";

const BASE = "http://localhost:3000";
const routes = ["/", "/about", "/actions", "/dashboard", "/form", "/navigation"];

const browser = await chromium.launch();
const page = await browser.newPage();

page.on("console", msg => {
  const text = msg.text();
  if (msg.type() === "error" || msg.type() === "warning" || text.includes("Hydration") || text.includes("hydrat") || text.includes("mismatch") || text.includes("did not match")) {
    console.log(`[${msg.type()}] ${text.slice(0, 500)}`);
  }
});

page.on("pageerror", err => {
  console.log(`[pageerror] ${err.message.slice(0, 300)}`);
});

for (const route of routes) {
  console.log(`\n--- ${route} ---`);
  await page.goto(`${BASE}${route}`, { waitUntil: "networkidle", timeout: 15000 });
  await page.waitForTimeout(1000);
}

await browser.close();
console.log("\nDone!");
