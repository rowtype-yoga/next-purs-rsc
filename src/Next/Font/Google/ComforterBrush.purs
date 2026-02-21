module Next.Font.Google.ComforterBrush where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import comforterBrushImpl :: forall r. { | r } -> FontConfig

comforterBrush :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
comforterBrush = comforterBrushImpl
