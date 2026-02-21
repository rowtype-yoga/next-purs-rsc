module Next.Font.Google.DiplomataSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import diplomataSCImpl :: forall r. { | r } -> FontConfig

diplomataSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
diplomataSC = diplomataSCImpl
