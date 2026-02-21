module Next.Font.Google.BerkshireSwash where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import berkshireSwashImpl :: forall r. { | r } -> FontConfig

berkshireSwash :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
berkshireSwash = berkshireSwashImpl
