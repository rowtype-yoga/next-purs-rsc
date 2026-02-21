module Next.Font.Google.Satisfy where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import satisfyImpl :: forall r. { | r } -> FontConfig

satisfy :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
satisfy = satisfyImpl
