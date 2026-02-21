module Next.Font.Google.GloriaHallelujah where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gloriaHallelujahImpl :: forall r. { | r } -> FontConfig

gloriaHallelujah :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gloriaHallelujah = gloriaHallelujahImpl
