module Next.Font.Google.JacquesFrancoisShadow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jacquesFrancoisShadowImpl :: forall r. { | r } -> FontConfig

jacquesFrancoisShadow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jacquesFrancoisShadow = jacquesFrancoisShadowImpl
