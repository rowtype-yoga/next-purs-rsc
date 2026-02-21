module Next.Font.Google.KaiseiHarunoUmi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kaiseiHarunoUmiImpl :: forall r. { | r } -> FontConfig

kaiseiHarunoUmi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kaiseiHarunoUmi = kaiseiHarunoUmiImpl
