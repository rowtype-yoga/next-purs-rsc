module Next.Font.Google.AlexBrush where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alexBrushImpl :: forall r. { | r } -> FontConfig

alexBrush :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alexBrush = alexBrushImpl
