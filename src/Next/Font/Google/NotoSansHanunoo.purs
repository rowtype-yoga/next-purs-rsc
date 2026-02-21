module Next.Font.Google.NotoSansHanunoo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansHanunooImpl :: forall r. { | r } -> FontConfig

notoSansHanunoo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansHanunoo = notoSansHanunooImpl
