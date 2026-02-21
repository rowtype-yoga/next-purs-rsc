module Next.Font.Google.Italiana where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import italianaImpl :: forall r. { | r } -> FontConfig

italiana :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
italiana = italianaImpl
