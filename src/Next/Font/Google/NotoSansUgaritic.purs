module Next.Font.Google.NotoSansUgaritic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansUgariticImpl :: forall r. { | r } -> FontConfig

notoSansUgaritic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansUgaritic = notoSansUgariticImpl
