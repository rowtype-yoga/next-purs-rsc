module Next.Font.Google.NotoSansKhudawadi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansKhudawadiImpl :: forall r. { | r } -> FontConfig

notoSansKhudawadi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansKhudawadi = notoSansKhudawadiImpl
