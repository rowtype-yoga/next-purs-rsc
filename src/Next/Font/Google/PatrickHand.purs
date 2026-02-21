module Next.Font.Google.PatrickHand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import patrickHandImpl :: forall r. { | r } -> FontConfig

patrickHand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
patrickHand = patrickHandImpl
