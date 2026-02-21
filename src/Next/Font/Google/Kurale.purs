module Next.Font.Google.Kurale where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kuraleImpl :: forall r. { | r } -> FontConfig

kurale :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kurale = kuraleImpl
