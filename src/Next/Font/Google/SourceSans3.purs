module Next.Font.Google.SourceSans3 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sourceSans3Impl :: forall r. { | r } -> FontConfig

sourceSans3 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sourceSans3 = sourceSans3Impl
