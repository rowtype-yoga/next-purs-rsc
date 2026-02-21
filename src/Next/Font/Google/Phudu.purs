module Next.Font.Google.Phudu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import phuduImpl :: forall r. { | r } -> FontConfig

phudu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
phudu = phuduImpl
