module Next.Font.Google.ButterflyKids where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import butterflyKidsImpl :: forall r. { | r } -> FontConfig

butterflyKids :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
butterflyKids = butterflyKidsImpl
