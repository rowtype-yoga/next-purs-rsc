module Next.Font.Google.EmilysCandy where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import emilysCandyImpl :: forall r. { | r } -> FontConfig

emilysCandy :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
emilysCandy = emilysCandyImpl
