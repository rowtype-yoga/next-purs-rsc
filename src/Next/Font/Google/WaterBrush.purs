module Next.Font.Google.WaterBrush where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import waterBrushImpl :: forall r. { | r } -> FontConfig

waterBrush :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
waterBrush = waterBrushImpl
