module Next.Font.Google.CaveatBrush where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import caveatBrushImpl :: forall r. { | r } -> FontConfig

caveatBrush :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
caveatBrush = caveatBrushImpl
