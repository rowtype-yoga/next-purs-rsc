module Next.Font.Google.Khand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import khandImpl :: forall r. { | r } -> FontConfig

khand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
khand = khandImpl
