module Next.Font.Google.NotoSansImperialAramaic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansImperialAramaicImpl :: forall r. { | r } -> FontConfig

notoSansImperialAramaic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansImperialAramaic = notoSansImperialAramaicImpl
