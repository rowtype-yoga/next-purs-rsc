module Next.Font.Google.Gelasio where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gelasioImpl :: forall r. { | r } -> FontConfig

gelasio :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gelasio = gelasioImpl
