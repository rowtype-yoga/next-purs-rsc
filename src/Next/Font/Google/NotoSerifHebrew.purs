module Next.Font.Google.NotoSerifHebrew where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifHebrewImpl :: forall r. { | r } -> FontConfig

notoSerifHebrew :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifHebrew = notoSerifHebrewImpl
