module Next.Font.Google.AbyssinicaSIL where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import abyssinicaSILImpl :: forall r. { | r } -> FontConfig

abyssinicaSIL :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
abyssinicaSIL = abyssinicaSILImpl
