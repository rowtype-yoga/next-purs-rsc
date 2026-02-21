module Next.Font.Google.Kablammo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kablammoImpl :: forall r. { | r } -> FontConfig

kablammo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kablammo = kablammoImpl
