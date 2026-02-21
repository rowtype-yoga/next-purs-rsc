module Next.Font.Google.NotoSansSyriacEastern where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSyriacEasternImpl :: forall r. { | r } -> FontConfig

notoSansSyriacEastern :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSyriacEastern = notoSansSyriacEasternImpl
