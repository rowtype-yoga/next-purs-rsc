module Next.Font.Google.Arya where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aryaImpl :: forall r. { | r } -> FontConfig

arya :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arya = aryaImpl
