module Next.Font.Google.EncodeSansSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import encodeSansSCImpl :: forall r. { | r } -> FontConfig

encodeSansSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
encodeSansSC = encodeSansSCImpl
