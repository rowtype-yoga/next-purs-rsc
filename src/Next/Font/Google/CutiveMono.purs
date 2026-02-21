module Next.Font.Google.CutiveMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cutiveMonoImpl :: forall r. { | r } -> FontConfig

cutiveMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cutiveMono = cutiveMonoImpl
