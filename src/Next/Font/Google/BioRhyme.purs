module Next.Font.Google.BioRhyme where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bioRhymeImpl :: forall r. { | r } -> FontConfig

bioRhyme :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bioRhyme = bioRhymeImpl
