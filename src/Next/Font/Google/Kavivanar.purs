module Next.Font.Google.Kavivanar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kavivanarImpl :: forall r. { | r } -> FontConfig

kavivanar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kavivanar = kavivanarImpl
