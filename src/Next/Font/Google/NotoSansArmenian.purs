module Next.Font.Google.NotoSansArmenian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansArmenianImpl :: forall r. { | r } -> FontConfig

notoSansArmenian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansArmenian = notoSansArmenianImpl
