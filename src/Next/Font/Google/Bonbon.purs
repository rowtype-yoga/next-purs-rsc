module Next.Font.Google.Bonbon where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bonbonImpl :: forall r. { | r } -> FontConfig

bonbon :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bonbon = bonbonImpl
