module Next.Font.Google.BBHBartle where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bBHBartleImpl :: forall r. { | r } -> FontConfig

bBHBartle :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bBHBartle = bBHBartleImpl
