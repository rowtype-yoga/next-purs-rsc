module Next.Font.Google.CascadiaMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cascadiaMonoImpl :: forall r. { | r } -> FontConfig

cascadiaMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cascadiaMono = cascadiaMonoImpl
