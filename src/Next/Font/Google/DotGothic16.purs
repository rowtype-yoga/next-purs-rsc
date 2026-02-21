module Next.Font.Google.DotGothic16 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dotGothic16Impl :: forall r. { | r } -> FontConfig

dotGothic16 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dotGothic16 = dotGothic16Impl
