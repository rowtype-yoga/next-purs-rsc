module Next.Font.Google.Alkalami where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alkalamiImpl :: forall r. { | r } -> FontConfig

alkalami :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alkalami = alkalamiImpl
