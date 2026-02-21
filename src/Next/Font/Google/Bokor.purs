module Next.Font.Google.Bokor where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bokorImpl :: forall r. { | r } -> FontConfig

bokor :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bokor = bokorImpl
