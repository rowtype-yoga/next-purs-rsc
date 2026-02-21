module Next.Font.Google.B612Mono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import b612MonoImpl :: forall r. { | r } -> FontConfig

b612Mono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
b612Mono = b612MonoImpl
