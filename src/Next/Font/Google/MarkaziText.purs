module Next.Font.Google.MarkaziText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import markaziTextImpl :: forall r. { | r } -> FontConfig

markaziText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
markaziText = markaziTextImpl
