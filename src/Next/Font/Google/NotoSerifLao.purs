module Next.Font.Google.NotoSerifLao where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifLaoImpl :: forall r. { | r } -> FontConfig

notoSerifLao :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifLao = notoSerifLaoImpl
