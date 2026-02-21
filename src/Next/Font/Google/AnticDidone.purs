module Next.Font.Google.AnticDidone where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anticDidoneImpl :: forall r. { | r } -> FontConfig

anticDidone :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anticDidone = anticDidoneImpl
