module Next.Font.Google.LondrinaOutline where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import londrinaOutlineImpl :: forall r. { | r } -> FontConfig

londrinaOutline :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
londrinaOutline = londrinaOutlineImpl
