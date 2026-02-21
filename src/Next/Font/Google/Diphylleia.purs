module Next.Font.Google.Diphylleia where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import diphylleiaImpl :: forall r. { | r } -> FontConfig

diphylleia :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
diphylleia = diphylleiaImpl
