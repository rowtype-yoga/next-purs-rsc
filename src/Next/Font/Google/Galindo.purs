module Next.Font.Google.Galindo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import galindoImpl :: forall r. { | r } -> FontConfig

galindo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
galindo = galindoImpl
