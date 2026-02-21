module Next.Font.Google.NotoSansBamum where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansBamumImpl :: forall r. { | r } -> FontConfig

notoSansBamum :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansBamum = notoSansBamumImpl
