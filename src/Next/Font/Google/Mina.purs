module Next.Font.Google.Mina where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import minaImpl :: forall r. { | r } -> FontConfig

mina :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mina = minaImpl
