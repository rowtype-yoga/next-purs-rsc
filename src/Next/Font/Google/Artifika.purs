module Next.Font.Google.Artifika where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import artifikaImpl :: forall r. { | r } -> FontConfig

artifika :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
artifika = artifikaImpl
