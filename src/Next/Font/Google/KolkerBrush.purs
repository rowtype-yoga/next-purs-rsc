module Next.Font.Google.KolkerBrush where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kolkerBrushImpl :: forall r. { | r } -> FontConfig

kolkerBrush :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kolkerBrush = kolkerBrushImpl
