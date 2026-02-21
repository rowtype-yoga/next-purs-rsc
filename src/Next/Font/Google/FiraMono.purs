module Next.Font.Google.FiraMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import firaMonoImpl :: forall r. { | r } -> FontConfig

firaMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
firaMono = firaMonoImpl
