module Next.Font.Google.Yellowtail where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yellowtailImpl :: forall r. { | r } -> FontConfig

yellowtail :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yellowtail = yellowtailImpl
