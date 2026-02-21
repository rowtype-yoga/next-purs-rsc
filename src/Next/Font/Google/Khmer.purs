module Next.Font.Google.Khmer where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import khmerImpl :: forall r. { | r } -> FontConfig

khmer :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
khmer = khmerImpl
