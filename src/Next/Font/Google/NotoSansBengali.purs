module Next.Font.Google.NotoSansBengali where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansBengaliImpl :: forall r. { | r } -> FontConfig

notoSansBengali :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansBengali = notoSansBengaliImpl
