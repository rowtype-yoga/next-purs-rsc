module Next.Font.Google.UnifrakturMaguntia where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import unifrakturMaguntiaImpl :: forall r. { | r } -> FontConfig

unifrakturMaguntia :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
unifrakturMaguntia = unifrakturMaguntiaImpl
