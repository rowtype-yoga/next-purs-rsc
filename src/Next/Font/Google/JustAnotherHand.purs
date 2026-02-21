module Next.Font.Google.JustAnotherHand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import justAnotherHandImpl :: forall r. { | r } -> FontConfig

justAnotherHand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
justAnotherHand = justAnotherHandImpl
