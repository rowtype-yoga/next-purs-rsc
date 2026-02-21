module Next.Font.Google.ShortStack where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shortStackImpl :: forall r. { | r } -> FontConfig

shortStack :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shortStack = shortStackImpl
