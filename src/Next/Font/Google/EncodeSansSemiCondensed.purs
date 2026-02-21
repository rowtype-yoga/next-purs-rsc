module Next.Font.Google.EncodeSansSemiCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import encodeSansSemiCondensedImpl :: forall r. { | r } -> FontConfig

encodeSansSemiCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
encodeSansSemiCondensed = encodeSansSemiCondensedImpl
