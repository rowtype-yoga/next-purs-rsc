module Next.Font.Google.JotiOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jotiOneImpl :: forall r. { | r } -> FontConfig

jotiOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jotiOne = jotiOneImpl
