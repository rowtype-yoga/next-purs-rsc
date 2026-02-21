module Next.Font.Google.OriginalSurfer where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import originalSurferImpl :: forall r. { | r } -> FontConfig

originalSurfer :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
originalSurfer = originalSurferImpl
