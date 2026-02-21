module Next.Font.Google.NotoSansBuginese where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansBugineseImpl :: forall r. { | r } -> FontConfig

notoSansBuginese :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansBuginese = notoSansBugineseImpl
