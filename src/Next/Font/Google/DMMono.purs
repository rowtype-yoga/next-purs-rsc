module Next.Font.Google.DMMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dMMonoImpl :: forall r. { | r } -> FontConfig

dMMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dMMono = dMMonoImpl
