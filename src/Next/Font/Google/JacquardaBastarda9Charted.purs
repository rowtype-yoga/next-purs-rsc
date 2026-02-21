module Next.Font.Google.JacquardaBastarda9Charted where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jacquardaBastarda9ChartedImpl :: forall r. { | r } -> FontConfig

jacquardaBastarda9Charted :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jacquardaBastarda9Charted = jacquardaBastarda9ChartedImpl
