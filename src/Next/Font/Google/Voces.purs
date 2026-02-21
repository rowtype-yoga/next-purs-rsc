module Next.Font.Google.Voces where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vocesImpl :: forall r. { | r } -> FontConfig

voces :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
voces = vocesImpl
