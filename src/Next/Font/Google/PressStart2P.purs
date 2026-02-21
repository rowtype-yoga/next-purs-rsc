module Next.Font.Google.PressStart2P where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pressStart2PImpl :: forall r. { | r } -> FontConfig

pressStart2P :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pressStart2P = pressStart2PImpl
