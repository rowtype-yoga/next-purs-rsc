module Next.Font.Google.MonteCarlo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import monteCarloImpl :: forall r. { | r } -> FontConfig

monteCarlo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
monteCarlo = monteCarloImpl
