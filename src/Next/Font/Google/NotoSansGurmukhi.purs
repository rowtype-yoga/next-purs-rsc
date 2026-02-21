module Next.Font.Google.NotoSansGurmukhi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansGurmukhiImpl :: forall r. { | r } -> FontConfig

notoSansGurmukhi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansGurmukhi = notoSansGurmukhiImpl
