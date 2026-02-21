module Next.Font.Google.BioRhymeExpanded where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bioRhymeExpandedImpl :: forall r. { | r } -> FontConfig

bioRhymeExpanded :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bioRhymeExpanded = bioRhymeExpandedImpl
