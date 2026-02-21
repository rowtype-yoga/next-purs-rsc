module Next.Font.Google.IstokWeb where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import istokWebImpl :: forall r. { | r } -> FontConfig

istokWeb :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
istokWeb = istokWebImpl
