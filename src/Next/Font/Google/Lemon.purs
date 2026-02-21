module Next.Font.Google.Lemon where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lemonImpl :: forall r. { | r } -> FontConfig

lemon :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lemon = lemonImpl
