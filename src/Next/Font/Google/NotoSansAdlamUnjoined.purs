module Next.Font.Google.NotoSansAdlamUnjoined where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansAdlamUnjoinedImpl :: forall r. { | r } -> FontConfig

notoSansAdlamUnjoined :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansAdlamUnjoined = notoSansAdlamUnjoinedImpl
