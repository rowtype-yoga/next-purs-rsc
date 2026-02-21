module Next.Font.Google.Sunshiney where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sunshineyImpl :: forall r. { | r } -> FontConfig

sunshiney :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sunshiney = sunshineyImpl
