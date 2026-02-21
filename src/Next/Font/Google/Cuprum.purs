module Next.Font.Google.Cuprum where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cuprumImpl :: forall r. { | r } -> FontConfig

cuprum :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cuprum = cuprumImpl
