module Next.Font.Google.Jacquard24 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jacquard24Impl :: forall r. { | r } -> FontConfig

jacquard24 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jacquard24 = jacquard24Impl
