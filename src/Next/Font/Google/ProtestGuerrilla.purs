module Next.Font.Google.ProtestGuerrilla where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import protestGuerrillaImpl :: forall r. { | r } -> FontConfig

protestGuerrilla :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
protestGuerrilla = protestGuerrillaImpl
