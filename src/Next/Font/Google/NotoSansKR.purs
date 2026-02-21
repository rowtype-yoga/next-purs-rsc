module Next.Font.Google.NotoSansKR where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansKRImpl :: forall r. { | r } -> FontConfig

notoSansKR :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansKR = notoSansKRImpl
