module Next.Font.Google.NotoSansSogdian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSogdianImpl :: forall r. { | r } -> FontConfig

notoSansSogdian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSogdian = notoSansSogdianImpl
