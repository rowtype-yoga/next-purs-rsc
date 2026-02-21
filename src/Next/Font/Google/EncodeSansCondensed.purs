module Next.Font.Google.EncodeSansCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import encodeSansCondensedImpl :: forall r. { | r } -> FontConfig

encodeSansCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
encodeSansCondensed = encodeSansCondensedImpl
