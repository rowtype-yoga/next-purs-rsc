module Next.Font.Google.Syncopate where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import syncopateImpl :: forall r. { | r } -> FontConfig

syncopate :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
syncopate = syncopateImpl
