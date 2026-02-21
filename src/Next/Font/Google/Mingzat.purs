module Next.Font.Google.Mingzat where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mingzatImpl :: forall r. { | r } -> FontConfig

mingzat :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mingzat = mingzatImpl
