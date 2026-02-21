module Next.Font.Google.Merriweather where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import merriweatherImpl :: forall r. { | r } -> FontConfig

merriweather :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
merriweather = merriweatherImpl
