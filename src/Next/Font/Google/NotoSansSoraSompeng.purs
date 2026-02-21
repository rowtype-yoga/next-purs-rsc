module Next.Font.Google.NotoSansSoraSompeng where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSoraSompengImpl :: forall r. { | r } -> FontConfig

notoSansSoraSompeng :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSoraSompeng = notoSansSoraSompengImpl
