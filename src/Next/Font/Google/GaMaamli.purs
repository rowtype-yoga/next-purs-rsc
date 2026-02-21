module Next.Font.Google.GaMaamli where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gaMaamliImpl :: forall r. { | r } -> FontConfig

gaMaamli :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gaMaamli = gaMaamliImpl
