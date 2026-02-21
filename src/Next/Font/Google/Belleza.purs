module Next.Font.Google.Belleza where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bellezaImpl :: forall r. { | r } -> FontConfig

belleza :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
belleza = bellezaImpl
