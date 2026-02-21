module Next.Font.Google.FuzzyBubbles where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fuzzyBubblesImpl :: forall r. { | r } -> FontConfig

fuzzyBubbles :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fuzzyBubbles = fuzzyBubblesImpl
