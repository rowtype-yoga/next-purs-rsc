module Next.Font.Google.LexendDeca where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lexendDecaImpl :: forall r. { | r } -> FontConfig

lexendDeca :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lexendDeca = lexendDecaImpl
