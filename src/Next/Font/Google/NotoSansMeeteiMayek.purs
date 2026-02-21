module Next.Font.Google.NotoSansMeeteiMayek where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMeeteiMayekImpl :: forall r. { | r } -> FontConfig

notoSansMeeteiMayek :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMeeteiMayek = notoSansMeeteiMayekImpl
