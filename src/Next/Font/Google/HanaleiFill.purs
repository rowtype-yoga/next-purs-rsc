module Next.Font.Google.HanaleiFill where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hanaleiFillImpl :: forall r. { | r } -> FontConfig

hanaleiFill :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hanaleiFill = hanaleiFillImpl
