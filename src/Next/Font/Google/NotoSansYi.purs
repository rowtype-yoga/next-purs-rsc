module Next.Font.Google.NotoSansYi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansYiImpl :: forall r. { | r } -> FontConfig

notoSansYi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansYi = notoSansYiImpl
