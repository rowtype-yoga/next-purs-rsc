module Next.Font.Google.Amiko where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import amikoImpl :: forall r. { | r } -> FontConfig

amiko :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
amiko = amikoImpl
