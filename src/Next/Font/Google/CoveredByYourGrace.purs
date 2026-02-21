module Next.Font.Google.CoveredByYourGrace where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import coveredByYourGraceImpl :: forall r. { | r } -> FontConfig

coveredByYourGrace :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
coveredByYourGrace = coveredByYourGraceImpl
