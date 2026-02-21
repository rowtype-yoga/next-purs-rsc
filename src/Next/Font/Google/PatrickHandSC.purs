module Next.Font.Google.PatrickHandSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import patrickHandSCImpl :: forall r. { | r } -> FontConfig

patrickHandSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
patrickHandSC = patrickHandSCImpl
