module Next.Font.Google.NotoSerifArmenian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifArmenianImpl :: forall r. { | r } -> FontConfig

notoSerifArmenian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifArmenian = notoSerifArmenianImpl
