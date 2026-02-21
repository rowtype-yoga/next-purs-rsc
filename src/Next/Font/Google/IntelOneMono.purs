module Next.Font.Google.IntelOneMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import intelOneMonoImpl :: forall r. { | r } -> FontConfig

intelOneMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
intelOneMono = intelOneMonoImpl
