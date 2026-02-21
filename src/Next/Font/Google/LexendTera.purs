module Next.Font.Google.LexendTera where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lexendTeraImpl :: forall r. { | r } -> FontConfig

lexendTera :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lexendTera = lexendTeraImpl
