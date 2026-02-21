module Next.Font.Google.Narnoor where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import narnoorImpl :: forall r. { | r } -> FontConfig

narnoor :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
narnoor = narnoorImpl
