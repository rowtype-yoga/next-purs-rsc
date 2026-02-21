module Next.Font.Google.AlegreyaSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alegreyaSCImpl :: forall r. { | r } -> FontConfig

alegreyaSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alegreyaSC = alegreyaSCImpl
