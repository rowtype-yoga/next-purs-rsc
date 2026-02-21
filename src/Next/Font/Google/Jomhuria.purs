module Next.Font.Google.Jomhuria where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jomhuriaImpl :: forall r. { | r } -> FontConfig

jomhuria :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jomhuria = jomhuriaImpl
