module Next.Font.Google.LexendPeta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lexendPetaImpl :: forall r. { | r } -> FontConfig

lexendPeta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lexendPeta = lexendPetaImpl
