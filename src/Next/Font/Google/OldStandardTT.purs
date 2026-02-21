module Next.Font.Google.OldStandardTT where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import oldStandardTTImpl :: forall r. { | r } -> FontConfig

oldStandardTT :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
oldStandardTT = oldStandardTTImpl
