module Next.Font.Google.MarcellusSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import marcellusSCImpl :: forall r. { | r } -> FontConfig

marcellusSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
marcellusSC = marcellusSCImpl
