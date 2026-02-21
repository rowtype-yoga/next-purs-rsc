module Next.Font.Google.Bayon where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bayonImpl :: forall r. { | r } -> FontConfig

bayon :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bayon = bayonImpl
