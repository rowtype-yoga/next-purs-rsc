module Next.Font.Google.MiriamLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import miriamLibreImpl :: forall r. { | r } -> FontConfig

miriamLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
miriamLibre = miriamLibreImpl
