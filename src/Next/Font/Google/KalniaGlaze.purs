module Next.Font.Google.KalniaGlaze where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kalniaGlazeImpl :: forall r. { | r } -> FontConfig

kalniaGlaze :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kalniaGlaze = kalniaGlazeImpl
