module Next.Font.Google.WorkSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import workSansImpl :: forall r. { | r } -> FontConfig

workSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
workSans = workSansImpl
