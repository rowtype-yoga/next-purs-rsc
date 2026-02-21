module Next.Font.Google.NotoSansGeorgian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansGeorgianImpl :: forall r. { | r } -> FontConfig

notoSansGeorgian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansGeorgian = notoSansGeorgianImpl
