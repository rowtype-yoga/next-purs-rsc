module Next.Font.Google.NotoSansMedefaidrin where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMedefaidrinImpl :: forall r. { | r } -> FontConfig

notoSansMedefaidrin :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMedefaidrin = notoSansMedefaidrinImpl
