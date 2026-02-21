module Next.Font.Google.NovaFlat where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import novaFlatImpl :: forall r. { | r } -> FontConfig

novaFlat :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
novaFlat = novaFlatImpl
