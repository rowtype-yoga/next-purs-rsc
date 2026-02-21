module Next.Font.Google.ScheherazadeNew where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import scheherazadeNewImpl :: forall r. { | r } -> FontConfig

scheherazadeNew :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
scheherazadeNew = scheherazadeNewImpl
