module Next.Font.Google.KarlaTamilInclined where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import karlaTamilInclinedImpl :: forall r. { | r } -> FontConfig

karlaTamilInclined :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
karlaTamilInclined = karlaTamilInclinedImpl
