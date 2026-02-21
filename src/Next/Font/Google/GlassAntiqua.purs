module Next.Font.Google.GlassAntiqua where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import glassAntiquaImpl :: forall r. { | r } -> FontConfig

glassAntiqua :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
glassAntiqua = glassAntiquaImpl
