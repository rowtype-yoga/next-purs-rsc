module Next.Font.Google.Borel where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import borelImpl :: forall r. { | r } -> FontConfig

borel :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
borel = borelImpl
