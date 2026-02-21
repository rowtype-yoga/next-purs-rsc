module Next.Font.Google.HedvigLettersSerif where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hedvigLettersSerifImpl :: forall r. { | r } -> FontConfig

hedvigLettersSerif :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hedvigLettersSerif = hedvigLettersSerifImpl
