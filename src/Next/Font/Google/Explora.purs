module Next.Font.Google.Explora where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import exploraImpl :: forall r. { | r } -> FontConfig

explora :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
explora = exploraImpl
