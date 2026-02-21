module Next.Font.Google.Faustina where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import faustinaImpl :: forall r. { | r } -> FontConfig

faustina :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
faustina = faustinaImpl
