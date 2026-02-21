module Next.Font.Google.Gluten where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import glutenImpl :: forall r. { | r } -> FontConfig

gluten :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gluten = glutenImpl
