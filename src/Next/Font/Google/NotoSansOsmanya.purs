module Next.Font.Google.NotoSansOsmanya where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOsmanyaImpl :: forall r. { | r } -> FontConfig

notoSansOsmanya :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOsmanya = notoSansOsmanyaImpl
