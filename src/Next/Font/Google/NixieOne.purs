module Next.Font.Google.NixieOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nixieOneImpl :: forall r. { | r } -> FontConfig

nixieOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nixieOne = nixieOneImpl
