module Next.Font.Google.Jersey25Charted where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jersey25ChartedImpl :: forall r. { | r } -> FontConfig

jersey25Charted :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jersey25Charted = jersey25ChartedImpl
