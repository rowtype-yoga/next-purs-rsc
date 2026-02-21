module Next.Font.Google.EncodeSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import encodeSansImpl :: forall r. { | r } -> FontConfig

encodeSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
encodeSans = encodeSansImpl
