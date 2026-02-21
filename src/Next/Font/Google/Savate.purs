module Next.Font.Google.Savate where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import savateImpl :: forall r. { | r } -> FontConfig

savate :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
savate = savateImpl
