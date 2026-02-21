module Next.Font.Google.ChivoMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chivoMonoImpl :: forall r. { | r } -> FontConfig

chivoMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chivoMono = chivoMonoImpl
