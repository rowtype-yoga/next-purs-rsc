module Next.Font.Google.Philosopher where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import philosopherImpl :: forall r. { | r } -> FontConfig

philosopher :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
philosopher = philosopherImpl
