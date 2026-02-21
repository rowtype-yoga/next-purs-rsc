module Next.Font.Google.NotoSansNewTaiLue where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansNewTaiLueImpl :: forall r. { | r } -> FontConfig

notoSansNewTaiLue :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansNewTaiLue = notoSansNewTaiLueImpl
