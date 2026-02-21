module Next.Font.Google.McLaren where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mcLarenImpl :: forall r. { | r } -> FontConfig

mcLaren :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mcLaren = mcLarenImpl
