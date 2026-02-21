module Next.Font.Google.NotoSansMandaic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMandaicImpl :: forall r. { | r } -> FontConfig

notoSansMandaic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMandaic = notoSansMandaicImpl
