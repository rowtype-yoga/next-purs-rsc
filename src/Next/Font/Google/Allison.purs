module Next.Font.Google.Allison where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import allisonImpl :: forall r. { | r } -> FontConfig

allison :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
allison = allisonImpl
