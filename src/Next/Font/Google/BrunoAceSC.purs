module Next.Font.Google.BrunoAceSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import brunoAceSCImpl :: forall r. { | r } -> FontConfig

brunoAceSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
brunoAceSC = brunoAceSCImpl
