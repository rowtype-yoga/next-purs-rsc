module Next.Font.Google.ClimateCrisis where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import climateCrisisImpl :: forall r. { | r } -> FontConfig

climateCrisis :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
climateCrisis = climateCrisisImpl
