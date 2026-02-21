module Next.Font.Google.NotoSansSharada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSharadaImpl :: forall r. { | r } -> FontConfig

notoSansSharada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSharada = notoSansSharadaImpl
