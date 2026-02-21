module Next.Font.Google.NotoSansMeroitic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMeroiticImpl :: forall r. { | r } -> FontConfig

notoSansMeroitic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMeroitic = notoSansMeroiticImpl
