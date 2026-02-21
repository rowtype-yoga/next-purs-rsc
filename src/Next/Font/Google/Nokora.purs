module Next.Font.Google.Nokora where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nokoraImpl :: forall r. { | r } -> FontConfig

nokora :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nokora = nokoraImpl
