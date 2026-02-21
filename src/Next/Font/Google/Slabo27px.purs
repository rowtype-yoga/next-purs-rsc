module Next.Font.Google.Slabo27px where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import slabo27pxImpl :: forall r. { | r } -> FontConfig

slabo27px :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
slabo27px = slabo27pxImpl
