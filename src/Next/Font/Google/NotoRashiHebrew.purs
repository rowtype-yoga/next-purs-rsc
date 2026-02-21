module Next.Font.Google.NotoRashiHebrew where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoRashiHebrewImpl :: forall r. { | r } -> FontConfig

notoRashiHebrew :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoRashiHebrew = notoRashiHebrewImpl
