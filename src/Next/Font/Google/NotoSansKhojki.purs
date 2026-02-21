module Next.Font.Google.NotoSansKhojki where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansKhojkiImpl :: forall r. { | r } -> FontConfig

notoSansKhojki :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansKhojki = notoSansKhojkiImpl
