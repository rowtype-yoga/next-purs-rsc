module Next.Font.Google.LexendMega where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lexendMegaImpl :: forall r. { | r } -> FontConfig

lexendMega :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lexendMega = lexendMegaImpl
