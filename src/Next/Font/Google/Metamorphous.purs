module Next.Font.Google.Metamorphous where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import metamorphousImpl :: forall r. { | r } -> FontConfig

metamorphous :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
metamorphous = metamorphousImpl
