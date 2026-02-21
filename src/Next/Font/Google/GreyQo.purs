module Next.Font.Google.GreyQo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import greyQoImpl :: forall r. { | r } -> FontConfig

greyQo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
greyQo = greyQoImpl
