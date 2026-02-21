module Next.Font.Google.TextMeOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import textMeOneImpl :: forall r. { | r } -> FontConfig

textMeOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
textMeOne = textMeOneImpl
