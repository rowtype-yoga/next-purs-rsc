module Next.Font.Google.Unkempt where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import unkemptImpl :: forall r. { | r } -> FontConfig

unkempt :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
unkempt = unkemptImpl
