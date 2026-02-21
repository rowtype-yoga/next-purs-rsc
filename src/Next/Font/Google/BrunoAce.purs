module Next.Font.Google.BrunoAce where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import brunoAceImpl :: forall r. { | r } -> FontConfig

brunoAce :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
brunoAce = brunoAceImpl
