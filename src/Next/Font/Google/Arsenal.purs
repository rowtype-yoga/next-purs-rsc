module Next.Font.Google.Arsenal where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import arsenalImpl :: forall r. { | r } -> FontConfig

arsenal :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arsenal = arsenalImpl
