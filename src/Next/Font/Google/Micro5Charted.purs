module Next.Font.Google.Micro5Charted where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import micro5ChartedImpl :: forall r. { | r } -> FontConfig

micro5Charted :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
micro5Charted = micro5ChartedImpl
