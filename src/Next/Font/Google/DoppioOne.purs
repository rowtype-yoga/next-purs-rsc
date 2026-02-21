module Next.Font.Google.DoppioOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import doppioOneImpl :: forall r. { | r } -> FontConfig

doppioOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
doppioOne = doppioOneImpl
