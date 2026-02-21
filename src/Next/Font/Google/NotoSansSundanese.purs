module Next.Font.Google.NotoSansSundanese where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSundaneseImpl :: forall r. { | r } -> FontConfig

notoSansSundanese :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSundanese = notoSansSundaneseImpl
