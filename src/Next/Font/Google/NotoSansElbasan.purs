module Next.Font.Google.NotoSansElbasan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansElbasanImpl :: forall r. { | r } -> FontConfig

notoSansElbasan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansElbasan = notoSansElbasanImpl
