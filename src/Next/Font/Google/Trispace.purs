module Next.Font.Google.Trispace where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import trispaceImpl :: forall r. { | r } -> FontConfig

trispace :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
trispace = trispaceImpl
