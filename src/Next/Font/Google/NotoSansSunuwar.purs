module Next.Font.Google.NotoSansSunuwar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSunuwarImpl :: forall r. { | r } -> FontConfig

notoSansSunuwar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSunuwar = notoSansSunuwarImpl
