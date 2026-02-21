module Next.Font.Google.NotoSansKayahLi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansKayahLiImpl :: forall r. { | r } -> FontConfig

notoSansKayahLi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansKayahLi = notoSansKayahLiImpl
