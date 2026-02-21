module Next.Font.Google.Alef where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alefImpl :: forall r. { | r } -> FontConfig

alef :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alef = alefImpl
