module Next.Font.Google.Allan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import allanImpl :: forall r. { | r } -> FontConfig

allan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
allan = allanImpl
