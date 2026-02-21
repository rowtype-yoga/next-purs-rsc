# Fonts

`next/font/google` and `next/font/local` use a compile-time loader that only works in files Next.js processes directly. Font constructors **must** be called and assigned to a `const` in module scope inside `app/` — they cannot be called from PureScript FFI files in `output/`.

## Setup

### 1. `app/fonts.js`

```js
import { Inter } from "next/font/google";
import { EB_Garamond } from "next/font/google";

export const sans = Inter({ subsets: ["latin"], variable: "--font-sans" });
export const serif = EB_Garamond({ subsets: ["latin"], variable: "--font-serif" });
```

### 2. `src/Fonts.purs`

```purescript
module Fonts where

import Next.Font (FontConfig)

foreign import sans :: FontConfig
foreign import serif :: FontConfig
```

### 3. `src/Fonts.js`

```js
export { sans, serif } from "../../app/fonts.js";
```

### 4. Layout

```purescript
import Fonts (sans)
import Next.Font (fontClassName, fontVariable)

layout = nextLayout {} $ pure \{ children } -> Om.do
  Om.pure $
    html { lang: "en", className: fontClassName sans <> maybe "" (append " ") (fontVariable sans) }
      [ body { className: "antialiased" } [ main {} children ] ]
```

## API

- `fontClassName :: FontConfig -> String` — CSS class that applies the font
- `fontVariable :: FontConfig -> Maybe String` — CSS variable name (e.g. `--font-sans`)
- `fontStyle :: FontConfig -> FontStyle` — `{ fontFamily, fontWeight, fontStyle }`
- `GoogleFontOptions` — row type for Google font options (`weight`, `style`, `display`, `variable`, `subsets`, etc.)
- `LocalFontOptions` — row type for local font options (`src`, `weight`, `style`, `variable`, etc.)

## Why the indirection?

Next.js has a special Webpack/Turbopack loader that intercepts `import { X } from "next/font/google"` and transforms it at compile time. This only applies to files in the Next.js module graph starting from `app/`. PureScript compiles to `output/`, which is outside this graph, so the font loader never runs on FFI files there. The `app/fonts.js` bridge file is the workaround.
