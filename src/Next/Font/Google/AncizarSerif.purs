module Next.Font.Google.AncizarSerif where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ancizarSerifImpl :: forall r. { | r } -> FontConfig

ancizarSerif :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ancizarSerif = ancizarSerifImpl
