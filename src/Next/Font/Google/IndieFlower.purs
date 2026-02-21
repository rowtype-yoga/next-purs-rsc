module Next.Font.Google.IndieFlower where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import indieFlowerImpl :: forall r. { | r } -> FontConfig

indieFlower :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
indieFlower = indieFlowerImpl
