module Next.Font.Google.HerrVonMuellerhoff where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import herrVonMuellerhoffImpl :: forall r. { | r } -> FontConfig

herrVonMuellerhoff :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
herrVonMuellerhoff = herrVonMuellerhoffImpl
