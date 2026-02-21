module Next.Font.Google.Devonshire where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import devonshireImpl :: forall r. { | r } -> FontConfig

devonshire :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
devonshire = devonshireImpl
