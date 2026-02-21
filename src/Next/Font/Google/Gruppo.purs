module Next.Font.Google.Gruppo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gruppoImpl :: forall r. { | r } -> FontConfig

gruppo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gruppo = gruppoImpl
