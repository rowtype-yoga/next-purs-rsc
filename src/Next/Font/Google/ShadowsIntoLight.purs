module Next.Font.Google.ShadowsIntoLight where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shadowsIntoLightImpl :: forall r. { | r } -> FontConfig

shadowsIntoLight :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shadowsIntoLight = shadowsIntoLightImpl
