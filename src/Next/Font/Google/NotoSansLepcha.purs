module Next.Font.Google.NotoSansLepcha where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansLepchaImpl :: forall r. { | r } -> FontConfig

notoSansLepcha :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansLepcha = notoSansLepchaImpl
