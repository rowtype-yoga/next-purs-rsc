module Next.Font.Google.Urbanist where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import urbanistImpl :: forall r. { | r } -> FontConfig

urbanist :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
urbanist = urbanistImpl
