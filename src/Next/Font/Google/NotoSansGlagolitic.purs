module Next.Font.Google.NotoSansGlagolitic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansGlagoliticImpl :: forall r. { | r } -> FontConfig

notoSansGlagolitic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansGlagolitic = notoSansGlagoliticImpl
