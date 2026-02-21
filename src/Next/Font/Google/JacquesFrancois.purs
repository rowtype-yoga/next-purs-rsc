module Next.Font.Google.JacquesFrancois where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jacquesFrancoisImpl :: forall r. { | r } -> FontConfig

jacquesFrancois :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jacquesFrancois = jacquesFrancoisImpl
