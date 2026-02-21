module Next.Font.Google.NanumMyeongjo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nanumMyeongjoImpl :: forall r. { | r } -> FontConfig

nanumMyeongjo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nanumMyeongjo = nanumMyeongjoImpl
