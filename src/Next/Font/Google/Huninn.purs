module Next.Font.Google.Huninn where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import huninnImpl :: forall r. { | r } -> FontConfig

huninn :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
huninn = huninnImpl
