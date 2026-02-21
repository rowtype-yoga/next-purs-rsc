module Next.Font.Google.Abel where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import abelImpl :: forall r. { | r } -> FontConfig

abel :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
abel = abelImpl
