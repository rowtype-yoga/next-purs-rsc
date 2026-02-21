module Next.Font.Google.NotoSansSyriacWestern where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSyriacWesternImpl :: forall r. { | r } -> FontConfig

notoSansSyriacWestern :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSyriacWestern = notoSansSyriacWesternImpl
