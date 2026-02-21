module Next.Font.Google.NotoSansTamilSupplement where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTamilSupplementImpl :: forall r. { | r } -> FontConfig

notoSansTamilSupplement :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTamilSupplement = notoSansTamilSupplementImpl
