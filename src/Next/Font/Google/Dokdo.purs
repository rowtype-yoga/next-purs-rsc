module Next.Font.Google.Dokdo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dokdoImpl :: forall r. { | r } -> FontConfig

dokdo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dokdo = dokdoImpl
