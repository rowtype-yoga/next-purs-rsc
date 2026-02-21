module Next.Font.Google.KodeMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kodeMonoImpl :: forall r. { | r } -> FontConfig

kodeMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kodeMono = kodeMonoImpl
