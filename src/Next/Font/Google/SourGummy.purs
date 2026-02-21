module Next.Font.Google.SourGummy where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sourGummyImpl :: forall r. { | r } -> FontConfig

sourGummy :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sourGummy = sourGummyImpl
