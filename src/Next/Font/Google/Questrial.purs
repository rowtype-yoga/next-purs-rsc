module Next.Font.Google.Questrial where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import questrialImpl :: forall r. { | r } -> FontConfig

questrial :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
questrial = questrialImpl
