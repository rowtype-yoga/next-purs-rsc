module Next.Font.Google.NotoSansOldPermic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOldPermicImpl :: forall r. { | r } -> FontConfig

notoSansOldPermic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOldPermic = notoSansOldPermicImpl
