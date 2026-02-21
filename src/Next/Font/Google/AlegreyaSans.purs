module Next.Font.Google.AlegreyaSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alegreyaSansImpl :: forall r. { | r } -> FontConfig

alegreyaSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alegreyaSans = alegreyaSansImpl
