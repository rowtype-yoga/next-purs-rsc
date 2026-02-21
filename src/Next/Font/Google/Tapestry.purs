module Next.Font.Google.Tapestry where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tapestryImpl :: forall r. { | r } -> FontConfig

tapestry :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tapestry = tapestryImpl
