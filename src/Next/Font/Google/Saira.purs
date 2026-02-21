module Next.Font.Google.Saira where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sairaImpl :: forall r. { | r } -> FontConfig

saira :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
saira = sairaImpl
