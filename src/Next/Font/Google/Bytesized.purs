module Next.Font.Google.Bytesized where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bytesizedImpl :: forall r. { | r } -> FontConfig

bytesized :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bytesized = bytesizedImpl
