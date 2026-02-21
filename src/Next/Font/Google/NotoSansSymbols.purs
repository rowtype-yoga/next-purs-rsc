module Next.Font.Google.NotoSansSymbols where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSymbolsImpl :: forall r. { | r } -> FontConfig

notoSansSymbols :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSymbols = notoSansSymbolsImpl
