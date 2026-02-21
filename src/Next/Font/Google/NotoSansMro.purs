module Next.Font.Google.NotoSansMro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMroImpl :: forall r. { | r } -> FontConfig

notoSansMro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMro = notoSansMroImpl
