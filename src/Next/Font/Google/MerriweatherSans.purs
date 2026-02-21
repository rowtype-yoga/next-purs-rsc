module Next.Font.Google.MerriweatherSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import merriweatherSansImpl :: forall r. { | r } -> FontConfig

merriweatherSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
merriweatherSans = merriweatherSansImpl
