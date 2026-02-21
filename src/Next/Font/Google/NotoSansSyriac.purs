module Next.Font.Google.NotoSansSyriac where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSyriacImpl :: forall r. { | r } -> FontConfig

notoSansSyriac :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSyriac = notoSansSyriacImpl
