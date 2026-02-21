module Next.Font.Google.Jersey15Charted where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jersey15ChartedImpl :: forall r. { | r } -> FontConfig

jersey15Charted :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jersey15Charted = jersey15ChartedImpl
