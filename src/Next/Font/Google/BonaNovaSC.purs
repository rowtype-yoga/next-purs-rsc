module Next.Font.Google.BonaNovaSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bonaNovaSCImpl :: forall r. { | r } -> FontConfig

bonaNovaSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bonaNovaSC = bonaNovaSCImpl
