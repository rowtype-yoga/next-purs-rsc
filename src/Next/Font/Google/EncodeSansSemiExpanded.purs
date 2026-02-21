module Next.Font.Google.EncodeSansSemiExpanded where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import encodeSansSemiExpandedImpl :: forall r. { | r } -> FontConfig

encodeSansSemiExpanded :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
encodeSansSemiExpanded = encodeSansSemiExpandedImpl
