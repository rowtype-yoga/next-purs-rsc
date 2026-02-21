module Next.Font.Google.Warnes where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import warnesImpl :: forall r. { | r } -> FontConfig

warnes :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
warnes = warnesImpl
