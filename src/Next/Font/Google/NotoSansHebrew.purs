module Next.Font.Google.NotoSansHebrew where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansHebrewImpl :: forall r. { | r } -> FontConfig

notoSansHebrew :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansHebrew = notoSansHebrewImpl
