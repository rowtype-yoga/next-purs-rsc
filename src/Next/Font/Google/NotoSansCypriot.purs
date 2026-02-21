module Next.Font.Google.NotoSansCypriot where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansCypriotImpl :: forall r. { | r } -> FontConfig

notoSansCypriot :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansCypriot = notoSansCypriotImpl
