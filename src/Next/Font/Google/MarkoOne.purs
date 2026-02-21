module Next.Font.Google.MarkoOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import markoOneImpl :: forall r. { | r } -> FontConfig

markoOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
markoOne = markoOneImpl
