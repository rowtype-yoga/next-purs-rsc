module Next.Font.Google.NotoSansJavanese where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansJavaneseImpl :: forall r. { | r } -> FontConfig

notoSansJavanese :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansJavanese = notoSansJavaneseImpl
