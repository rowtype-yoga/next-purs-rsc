module Next.Font.Google.SometypeMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sometypeMonoImpl :: forall r. { | r } -> FontConfig

sometypeMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sometypeMono = sometypeMonoImpl
