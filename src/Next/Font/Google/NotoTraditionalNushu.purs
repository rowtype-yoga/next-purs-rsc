module Next.Font.Google.NotoTraditionalNushu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoTraditionalNushuImpl :: forall r. { | r } -> FontConfig

notoTraditionalNushu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoTraditionalNushu = notoTraditionalNushuImpl
