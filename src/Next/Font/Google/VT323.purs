module Next.Font.Google.VT323 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vT323Impl :: forall r. { | r } -> FontConfig

vT323 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vT323 = vT323Impl
