module Next.Font.Google.BadeenDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import badeenDisplayImpl :: forall r. { | r } -> FontConfig

badeenDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
badeenDisplay = badeenDisplayImpl
