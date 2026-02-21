module Next.Font.Google.Smooch where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import smoochImpl :: forall r. { | r } -> FontConfig

smooch :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
smooch = smoochImpl
