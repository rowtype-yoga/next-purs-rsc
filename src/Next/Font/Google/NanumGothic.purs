module Next.Font.Google.NanumGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nanumGothicImpl :: forall r. { | r } -> FontConfig

nanumGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nanumGothic = nanumGothicImpl
