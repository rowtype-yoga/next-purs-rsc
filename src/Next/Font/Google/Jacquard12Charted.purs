module Next.Font.Google.Jacquard12Charted where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jacquard12ChartedImpl :: forall r. { | r } -> FontConfig

jacquard12Charted :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jacquard12Charted = jacquard12ChartedImpl
