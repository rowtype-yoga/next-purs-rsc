import { describe, it, expect } from "vitest";
import {
  Home,
  About,
  Dashboard,
  Blog__Slug,
  toPath,
} from "../output/Route/index.js";

describe("toPath", () => {
  it('Home → "/"', () => {
    expect(toPath(Home.value)).toBe("/");
  });

  it('About → "/about"', () => {
    expect(toPath(About.value)).toBe("/about");
  });

  it('Dashboard → "/dashboard"', () => {
    expect(toPath(Dashboard.value)).toBe("/dashboard");
  });

  it('Blog__Slug "hello" → "/blog/hello"', () => {
    expect(toPath(Blog__Slug.create("hello"))).toBe("/blog/hello");
  });
});
