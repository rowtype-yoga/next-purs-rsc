module Next.Font.Google.Yarndings20Charted where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yarndings20ChartedImpl :: forall r. { | r } -> FontConfig

yarndings20Charted :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yarndings20Charted = yarndings20ChartedImpl
