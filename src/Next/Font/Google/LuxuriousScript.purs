module Next.Font.Google.LuxuriousScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import luxuriousScriptImpl :: forall r. { | r } -> FontConfig

luxuriousScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
luxuriousScript = luxuriousScriptImpl
