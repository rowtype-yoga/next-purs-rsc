module Next.Font.Google.SmoochSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import smoochSansImpl :: forall r. { | r } -> FontConfig

smoochSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
smoochSans = smoochSansImpl
