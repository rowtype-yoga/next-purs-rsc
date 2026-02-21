module Next.Font.Google.Sixtyfour where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sixtyfourImpl :: forall r. { | r } -> FontConfig

sixtyfour :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sixtyfour = sixtyfourImpl
