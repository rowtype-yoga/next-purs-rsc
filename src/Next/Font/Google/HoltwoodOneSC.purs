module Next.Font.Google.HoltwoodOneSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import holtwoodOneSCImpl :: forall r. { | r } -> FontConfig

holtwoodOneSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
holtwoodOneSC = holtwoodOneSCImpl
