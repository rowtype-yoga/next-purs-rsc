module Next.Font.Google.Karantina where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import karantinaImpl :: forall r. { | r } -> FontConfig

karantina :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
karantina = karantinaImpl
