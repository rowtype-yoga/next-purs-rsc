module Next.Font.Google.Elsie where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import elsieImpl :: forall r. { | r } -> FontConfig

elsie :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
elsie = elsieImpl
