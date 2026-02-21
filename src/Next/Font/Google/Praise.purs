module Next.Font.Google.Praise where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import praiseImpl :: forall r. { | r } -> FontConfig

praise :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
praise = praiseImpl
