module Next.Font.Google.NotoSansBhaiksuki where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansBhaiksukiImpl :: forall r. { | r } -> FontConfig

notoSansBhaiksuki :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansBhaiksuki = notoSansBhaiksukiImpl
