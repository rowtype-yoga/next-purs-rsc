module Next.Font.Google.HedvigLettersSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hedvigLettersSansImpl :: forall r. { | r } -> FontConfig

hedvigLettersSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hedvigLettersSans = hedvigLettersSansImpl
