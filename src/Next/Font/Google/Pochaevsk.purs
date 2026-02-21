module Next.Font.Google.Pochaevsk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pochaevskImpl :: forall r. { | r } -> FontConfig

pochaevsk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pochaevsk = pochaevskImpl
