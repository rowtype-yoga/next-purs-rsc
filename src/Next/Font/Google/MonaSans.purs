module Next.Font.Google.MonaSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import monaSansImpl :: forall r. { | r } -> FontConfig

monaSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
monaSans = monaSansImpl
