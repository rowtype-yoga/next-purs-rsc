module Next.Font.Google.NotoSansGunjalaGondi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansGunjalaGondiImpl :: forall r. { | r } -> FontConfig

notoSansGunjalaGondi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansGunjalaGondi = notoSansGunjalaGondiImpl
