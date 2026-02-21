module Next.Font.Google.FascinateInline where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fascinateInlineImpl :: forall r. { | r } -> FontConfig

fascinateInline :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fascinateInline = fascinateInlineImpl
