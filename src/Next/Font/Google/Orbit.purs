module Next.Font.Google.Orbit where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import orbitImpl :: forall r. { | r } -> FontConfig

orbit :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
orbit = orbitImpl
