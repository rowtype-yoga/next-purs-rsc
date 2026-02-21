module Next.Font.Google.ShadowsIntoLightTwo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shadowsIntoLightTwoImpl :: forall r. { | r } -> FontConfig

shadowsIntoLightTwo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shadowsIntoLightTwo = shadowsIntoLightTwoImpl
