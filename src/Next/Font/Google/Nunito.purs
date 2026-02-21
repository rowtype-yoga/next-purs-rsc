module Next.Font.Google.Nunito where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nunitoImpl :: forall r. { | r } -> FontConfig

nunito :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nunito = nunitoImpl
