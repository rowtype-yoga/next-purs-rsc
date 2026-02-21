module Next.Font.Google.LexendGiga where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lexendGigaImpl :: forall r. { | r } -> FontConfig

lexendGiga :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lexendGiga = lexendGigaImpl
