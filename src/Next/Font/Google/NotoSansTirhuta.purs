module Next.Font.Google.NotoSansTirhuta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTirhutaImpl :: forall r. { | r } -> FontConfig

notoSansTirhuta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTirhuta = notoSansTirhutaImpl
