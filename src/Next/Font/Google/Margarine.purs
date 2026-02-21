module Next.Font.Google.Margarine where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import margarineImpl :: forall r. { | r } -> FontConfig

margarine :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
margarine = margarineImpl
