module Next.Font.Google.ABeeZee where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aBeeZeeImpl :: forall r. { | r } -> FontConfig

aBeeZee :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
aBeeZee = aBeeZeeImpl
