module Next.Font.Google.Slabo13px where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import slabo13pxImpl :: forall r. { | r } -> FontConfig

slabo13px :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
slabo13px = slabo13pxImpl
