module Next.Font.Google.VollkornSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vollkornSCImpl :: forall r. { | r } -> FontConfig

vollkornSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vollkornSC = vollkornSCImpl
