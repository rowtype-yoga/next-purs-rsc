module Next.Font.Google.NotoSansCarian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansCarianImpl :: forall r. { | r } -> FontConfig

notoSansCarian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansCarian = notoSansCarianImpl
