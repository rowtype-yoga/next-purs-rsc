module Next.Font.Google.NotoSerifGeorgian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifGeorgianImpl :: forall r. { | r } -> FontConfig

notoSerifGeorgian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifGeorgian = notoSerifGeorgianImpl
