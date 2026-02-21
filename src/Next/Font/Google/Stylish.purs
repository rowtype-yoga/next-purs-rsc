module Next.Font.Google.Stylish where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stylishImpl :: forall r. { | r } -> FontConfig

stylish :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stylish = stylishImpl
