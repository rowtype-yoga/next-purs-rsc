module Next.Font.Google.Comforter where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import comforterImpl :: forall r. { | r } -> FontConfig

comforter :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
comforter = comforterImpl
