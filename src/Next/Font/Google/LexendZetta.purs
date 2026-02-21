module Next.Font.Google.LexendZetta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lexendZettaImpl :: forall r. { | r } -> FontConfig

lexendZetta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lexendZetta = lexendZettaImpl
