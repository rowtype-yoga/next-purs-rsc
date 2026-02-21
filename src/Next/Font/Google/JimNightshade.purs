module Next.Font.Google.JimNightshade where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jimNightshadeImpl :: forall r. { | r } -> FontConfig

jimNightshade :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jimNightshade = jimNightshadeImpl
