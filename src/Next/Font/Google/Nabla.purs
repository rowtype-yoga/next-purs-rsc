module Next.Font.Google.Nabla where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nablaImpl :: forall r. { | r } -> FontConfig

nabla :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nabla = nablaImpl
