module Next.Font.Google.NotoSansMath where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMathImpl :: forall r. { | r } -> FontConfig

notoSansMath :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMath = notoSansMathImpl
