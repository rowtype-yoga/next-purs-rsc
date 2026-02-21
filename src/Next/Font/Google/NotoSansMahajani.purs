module Next.Font.Google.NotoSansMahajani where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMahajaniImpl :: forall r. { | r } -> FontConfig

notoSansMahajani :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMahajani = notoSansMahajaniImpl
