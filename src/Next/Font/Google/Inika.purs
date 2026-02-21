module Next.Font.Google.Inika where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import inikaImpl :: forall r. { | r } -> FontConfig

inika :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
inika = inikaImpl
