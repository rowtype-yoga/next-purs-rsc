module Next.Font.Google.Molengo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import molengoImpl :: forall r. { | r } -> FontConfig

molengo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
molengo = molengoImpl
