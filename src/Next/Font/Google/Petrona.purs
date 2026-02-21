module Next.Font.Google.Petrona where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import petronaImpl :: forall r. { | r } -> FontConfig

petrona :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
petrona = petronaImpl
