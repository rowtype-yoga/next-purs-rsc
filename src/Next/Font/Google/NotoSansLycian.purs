module Next.Font.Google.NotoSansLycian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansLycianImpl :: forall r. { | r } -> FontConfig

notoSansLycian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansLycian = notoSansLycianImpl
