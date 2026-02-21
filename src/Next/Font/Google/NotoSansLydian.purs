module Next.Font.Google.NotoSansLydian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansLydianImpl :: forall r. { | r } -> FontConfig

notoSansLydian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansLydian = notoSansLydianImpl
