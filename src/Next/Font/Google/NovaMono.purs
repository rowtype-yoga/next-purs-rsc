module Next.Font.Google.NovaMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import novaMonoImpl :: forall r. { | r } -> FontConfig

novaMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
novaMono = novaMonoImpl
