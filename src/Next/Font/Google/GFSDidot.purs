module Next.Font.Google.GFSDidot where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gFSDidotImpl :: forall r. { | r } -> FontConfig

gFSDidot :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gFSDidot = gFSDidotImpl
