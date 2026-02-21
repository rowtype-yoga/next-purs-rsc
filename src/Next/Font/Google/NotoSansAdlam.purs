module Next.Font.Google.NotoSansAdlam where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansAdlamImpl :: forall r. { | r } -> FontConfig

notoSansAdlam :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansAdlam = notoSansAdlamImpl
