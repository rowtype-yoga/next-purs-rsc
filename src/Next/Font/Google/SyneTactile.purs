module Next.Font.Google.SyneTactile where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import syneTactileImpl :: forall r. { | r } -> FontConfig

syneTactile :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
syneTactile = syneTactileImpl
