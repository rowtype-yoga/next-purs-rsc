module Next.Font.Google.SingleDay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import singleDayImpl :: forall r. { | r } -> FontConfig

singleDay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
singleDay = singleDayImpl
