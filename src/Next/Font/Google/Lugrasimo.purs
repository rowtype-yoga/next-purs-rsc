module Next.Font.Google.Lugrasimo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lugrasimoImpl :: forall r. { | r } -> FontConfig

lugrasimo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lugrasimo = lugrasimoImpl
