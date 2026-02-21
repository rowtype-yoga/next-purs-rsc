module Next.Font.Google.MonomaniacOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import monomaniacOneImpl :: forall r. { | r } -> FontConfig

monomaniacOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
monomaniacOne = monomaniacOneImpl
