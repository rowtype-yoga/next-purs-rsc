module Next.Font.Google.NuosuSIL where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nuosuSILImpl :: forall r. { | r } -> FontConfig

nuosuSIL :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nuosuSIL = nuosuSILImpl
