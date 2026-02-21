module Next.Font.Google.Jersey10Charted where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jersey10ChartedImpl :: forall r. { | r } -> FontConfig

jersey10Charted :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jersey10Charted = jersey10ChartedImpl
