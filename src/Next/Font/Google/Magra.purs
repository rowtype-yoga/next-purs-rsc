module Next.Font.Google.Magra where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import magraImpl :: forall r. { | r } -> FontConfig

magra :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
magra = magraImpl
