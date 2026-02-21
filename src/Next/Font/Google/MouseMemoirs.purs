module Next.Font.Google.MouseMemoirs where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mouseMemoirsImpl :: forall r. { | r } -> FontConfig

mouseMemoirs :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mouseMemoirs = mouseMemoirsImpl
