module Next.Font.Google.NotoSansHanifiRohingya where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansHanifiRohingyaImpl :: forall r. { | r } -> FontConfig

notoSansHanifiRohingya :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansHanifiRohingya = notoSansHanifiRohingyaImpl
