module Next.Font.Google.NotoSansBatak where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansBatakImpl :: forall r. { | r } -> FontConfig

notoSansBatak :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansBatak = notoSansBatakImpl
