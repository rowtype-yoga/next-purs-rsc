module Next.Font.Google.GideonRoman where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gideonRomanImpl :: forall r. { | r } -> FontConfig

gideonRoman :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gideonRoman = gideonRomanImpl
