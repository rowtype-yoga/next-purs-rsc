module Next.Font.Google.Birthstone where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import birthstoneImpl :: forall r. { | r } -> FontConfig

birthstone :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
birthstone = birthstoneImpl
