module Next.Font.Google.NotoSansSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSCImpl :: forall r. { | r } -> FontConfig

notoSansSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSC = notoSansSCImpl
