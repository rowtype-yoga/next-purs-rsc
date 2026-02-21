module Next.Font.Google.Judson where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import judsonImpl :: forall r. { | r } -> FontConfig

judson :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
judson = judsonImpl
