module Next.Font.Google.NotoSansGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansGothicImpl :: forall r. { | r } -> FontConfig

notoSansGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansGothic = notoSansGothicImpl
