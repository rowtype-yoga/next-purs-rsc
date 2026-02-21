module Next.Font.Google.Ole where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import oleImpl :: forall r. { | r } -> FontConfig

ole :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ole = oleImpl
