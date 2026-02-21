module Next.Font.Google.MartianMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import martianMonoImpl :: forall r. { | r } -> FontConfig

martianMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
martianMono = martianMonoImpl
