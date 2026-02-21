module Next.Font.Google.Yantramanav where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yantramanavImpl :: forall r. { | r } -> FontConfig

yantramanav :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yantramanav = yantramanavImpl
