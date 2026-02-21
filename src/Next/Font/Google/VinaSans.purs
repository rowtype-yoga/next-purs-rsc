module Next.Font.Google.VinaSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vinaSansImpl :: forall r. { | r } -> FontConfig

vinaSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vinaSans = vinaSansImpl
