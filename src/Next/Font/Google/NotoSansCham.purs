module Next.Font.Google.NotoSansCham where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansChamImpl :: forall r. { | r } -> FontConfig

notoSansCham :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansCham = notoSansChamImpl
