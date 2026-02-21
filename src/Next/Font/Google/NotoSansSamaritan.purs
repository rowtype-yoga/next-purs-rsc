module Next.Font.Google.NotoSansSamaritan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSamaritanImpl :: forall r. { | r } -> FontConfig

notoSansSamaritan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSamaritan = notoSansSamaritanImpl
