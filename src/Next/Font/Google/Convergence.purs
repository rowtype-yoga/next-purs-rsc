module Next.Font.Google.Convergence where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import convergenceImpl :: forall r. { | r } -> FontConfig

convergence :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
convergence = convergenceImpl
