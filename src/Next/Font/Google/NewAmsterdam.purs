module Next.Font.Google.NewAmsterdam where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import newAmsterdamImpl :: forall r. { | r } -> FontConfig

newAmsterdam :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
newAmsterdam = newAmsterdamImpl
