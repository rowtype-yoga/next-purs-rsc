import { chromium } from "playwright";

const BASE = "http://localhost:3000";

const routes = [
  { path: "/", name: "home" },
  { path: "/about", name: "about" },
  { path: "/actions", name: "actions" },
  { path: "/blog/hello", name: "blog-slug" },
  { path: "/dashboard", name: "dashboard" },
  { path: "/form", name: "form" },
  { path: "/media", name: "media" },
  { path: "/navigation", name: "navigation" },
  { path: "/api/hello", name: "api-hello", isApi: true },
];

const browser = await chromium.launch();
const page = await browser.newPage({ viewport: { width: 1280, height: 800 } });

for (const route of routes) {
  const url = `${BASE}${route.path}`;
  process.stdout.write(`\n--- ${route.name} (${url}) ---\n`);
  try {
    const resp = await page.goto(url, { waitUntil: "networkidle", timeout: 15000 });
    const status = resp?.status() ?? "?";
    process.stdout.write(`  Status: ${status}\n`);

    if (route.isApi) {
      const body = await page.textContent("body");
      process.stdout.write(`  Body: ${body?.slice(0, 300)}\n`);
    } else {
      await page.screenshot({ path: `/tmp/purs-rsc-${route.name}.png` });
      process.stdout.write(`  Screenshot: /tmp/purs-rsc-${route.name}.png\n`);

      // Check for Next.js error overlay
      const errorOverlay = await page.$("nextjs-portal");
      if (errorOverlay) {
        const errorText = await page.evaluate(() => {
          const el = document.querySelector("nextjs-portal");
          return el?.shadowRoot?.textContent?.slice(0, 500) ?? "";
        });
        process.stdout.write(`  ERROR OVERLAY: ${errorText}\n`);
      }

      // Check for visible error text
      const bodyText = await page.textContent("body");
      if (bodyText?.includes("Error") || bodyText?.includes("error")) {
        process.stdout.write(`  Page text (excerpt): ${bodyText.slice(0, 300)}\n`);
      }
    }
  } catch (err) {
    process.stdout.write(`  FAILED: ${err.message}\n`);
  }
}

await browser.close();
process.stdout.write("\nDone!\n");
