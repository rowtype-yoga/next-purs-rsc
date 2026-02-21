module Next.Font.Google.NotoSansThaana where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansThaanaImpl :: forall r. { | r } -> FontConfig

notoSansThaana :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansThaana = notoSansThaanaImpl
