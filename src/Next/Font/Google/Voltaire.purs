module Next.Font.Google.Voltaire where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import voltaireImpl :: forall r. { | r } -> FontConfig

voltaire :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
voltaire = voltaireImpl
