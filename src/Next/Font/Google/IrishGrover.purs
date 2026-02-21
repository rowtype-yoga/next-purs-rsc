module Next.Font.Google.IrishGrover where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import irishGroverImpl :: forall r. { | r } -> FontConfig

irishGrover :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
irishGrover = irishGroverImpl
