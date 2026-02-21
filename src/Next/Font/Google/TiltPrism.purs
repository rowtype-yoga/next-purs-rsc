module Next.Font.Google.TiltPrism where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tiltPrismImpl :: forall r. { | r } -> FontConfig

tiltPrism :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tiltPrism = tiltPrismImpl
