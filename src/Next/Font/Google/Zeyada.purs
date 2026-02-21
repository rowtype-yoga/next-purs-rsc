module Next.Font.Google.Zeyada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zeyadaImpl :: forall r. { | r } -> FontConfig

zeyada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zeyada = zeyadaImpl
