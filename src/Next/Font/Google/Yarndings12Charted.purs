module Next.Font.Google.Yarndings12Charted where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yarndings12ChartedImpl :: forall r. { | r } -> FontConfig

yarndings12Charted :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yarndings12Charted = yarndings12ChartedImpl
