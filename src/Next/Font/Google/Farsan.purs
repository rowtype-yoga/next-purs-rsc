module Next.Font.Google.Farsan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import farsanImpl :: forall r. { | r } -> FontConfig

farsan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
farsan = farsanImpl
