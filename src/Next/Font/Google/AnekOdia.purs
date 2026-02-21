module Next.Font.Google.AnekOdia where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anekOdiaImpl :: forall r. { | r } -> FontConfig

anekOdia :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anekOdia = anekOdiaImpl
