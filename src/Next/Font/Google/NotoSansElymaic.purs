module Next.Font.Google.NotoSansElymaic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansElymaicImpl :: forall r. { | r } -> FontConfig

notoSansElymaic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansElymaic = notoSansElymaicImpl
