module Next.Font.Google.NotoSansMongolian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMongolianImpl :: forall r. { | r } -> FontConfig

notoSansMongolian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMongolian = notoSansMongolianImpl
