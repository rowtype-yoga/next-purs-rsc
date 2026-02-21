module Next.Font.Google.RubikBrokenFax where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikBrokenFaxImpl :: forall r. { | r } -> FontConfig

rubikBrokenFax :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikBrokenFax = rubikBrokenFaxImpl
