module Next.Font.Google.InstrumentSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import instrumentSansImpl :: forall r. { | r } -> FontConfig

instrumentSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
instrumentSans = instrumentSansImpl
