module Next.Font.Google.Jersey20Charted where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jersey20ChartedImpl :: forall r. { | r } -> FontConfig

jersey20Charted :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jersey20Charted = jersey20ChartedImpl
