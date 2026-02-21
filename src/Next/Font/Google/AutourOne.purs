module Next.Font.Google.AutourOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import autourOneImpl :: forall r. { | r } -> FontConfig

autourOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
autourOne = autourOneImpl
