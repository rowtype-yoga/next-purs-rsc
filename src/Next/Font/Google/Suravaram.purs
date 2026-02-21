module Next.Font.Google.Suravaram where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import suravaramImpl :: forall r. { | r } -> FontConfig

suravaram :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
suravaram = suravaramImpl
