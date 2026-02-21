module Next.Font.Google.Amarante where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import amaranteImpl :: forall r. { | r } -> FontConfig

amarante :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
amarante = amaranteImpl
