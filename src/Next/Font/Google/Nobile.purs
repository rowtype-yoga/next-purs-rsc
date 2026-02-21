module Next.Font.Google.Nobile where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nobileImpl :: forall r. { | r } -> FontConfig

nobile :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nobile = nobileImpl
