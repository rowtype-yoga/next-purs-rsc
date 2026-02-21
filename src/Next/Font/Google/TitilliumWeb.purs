module Next.Font.Google.TitilliumWeb where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import titilliumWebImpl :: forall r. { | r } -> FontConfig

titilliumWeb :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
titilliumWeb = titilliumWebImpl
