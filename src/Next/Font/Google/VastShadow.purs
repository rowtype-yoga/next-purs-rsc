module Next.Font.Google.VastShadow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vastShadowImpl :: forall r. { | r } -> FontConfig

vastShadow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vastShadow = vastShadowImpl
