module Next.Font.Google.LexendExa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lexendExaImpl :: forall r. { | r } -> FontConfig

lexendExa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lexendExa = lexendExaImpl
