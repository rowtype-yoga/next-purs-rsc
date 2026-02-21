module Next.Font.Google.NotoSerifAhom where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifAhomImpl :: forall r. { | r } -> FontConfig

notoSerifAhom :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifAhom = notoSerifAhomImpl
