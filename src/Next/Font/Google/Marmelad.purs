module Next.Font.Google.Marmelad where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import marmeladImpl :: forall r. { | r } -> FontConfig

marmelad :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
marmelad = marmeladImpl
