module Next.Font.Google.Kodchasan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kodchasanImpl :: forall r. { | r } -> FontConfig

kodchasan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kodchasan = kodchasanImpl
