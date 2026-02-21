module Next.Font.Google.NotoSansGujarati where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansGujaratiImpl :: forall r. { | r } -> FontConfig

notoSansGujarati :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansGujarati = notoSansGujaratiImpl
