module Next.Font.Google.NotoSansCoptic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansCopticImpl :: forall r. { | r } -> FontConfig

notoSansCoptic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansCoptic = notoSansCopticImpl
