module Next.Font.Google.NotoSerifEthiopic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifEthiopicImpl :: forall r. { | r } -> FontConfig

notoSerifEthiopic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifEthiopic = notoSerifEthiopicImpl
