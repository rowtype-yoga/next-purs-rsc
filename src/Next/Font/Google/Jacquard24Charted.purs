module Next.Font.Google.Jacquard24Charted where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jacquard24ChartedImpl :: forall r. { | r } -> FontConfig

jacquard24Charted :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jacquard24Charted = jacquard24ChartedImpl
