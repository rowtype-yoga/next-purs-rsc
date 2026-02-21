module Next.Font.Google.OoohBaby where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ooohBabyImpl :: forall r. { | r } -> FontConfig

ooohBaby :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ooohBaby = ooohBabyImpl
