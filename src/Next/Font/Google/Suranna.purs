module Next.Font.Google.Suranna where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import surannaImpl :: forall r. { | r } -> FontConfig

suranna :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
suranna = surannaImpl
