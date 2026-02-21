module Next.Font.Google.ChangaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import changaOneImpl :: forall r. { | r } -> FontConfig

changaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
changaOne = changaOneImpl
