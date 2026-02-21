module Next.Font.Google.Namdhinggo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import namdhinggoImpl :: forall r. { | r } -> FontConfig

namdhinggo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
namdhinggo = namdhinggoImpl
