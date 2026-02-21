module Next.Font.Google.HennyPenny where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hennyPennyImpl :: forall r. { | r } -> FontConfig

hennyPenny :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hennyPenny = hennyPennyImpl
