module Next.Font.Google.Smokum where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import smokumImpl :: forall r. { | r } -> FontConfig

smokum :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
smokum = smokumImpl
