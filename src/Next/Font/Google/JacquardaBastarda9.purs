module Next.Font.Google.JacquardaBastarda9 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jacquardaBastarda9Impl :: forall r. { | r } -> FontConfig

jacquardaBastarda9 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jacquardaBastarda9 = jacquardaBastarda9Impl
