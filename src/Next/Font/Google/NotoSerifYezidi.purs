module Next.Font.Google.NotoSerifYezidi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifYezidiImpl :: forall r. { | r } -> FontConfig

notoSerifYezidi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifYezidi = notoSerifYezidiImpl
