module Next.Font.Google.NotoSansLaoLooped where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansLaoLoopedImpl :: forall r. { | r } -> FontConfig

notoSansLaoLooped :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansLaoLooped = notoSansLaoLoopedImpl
