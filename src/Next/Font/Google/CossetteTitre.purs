module Next.Font.Google.CossetteTitre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cossetteTitreImpl :: forall r. { | r } -> FontConfig

cossetteTitre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cossetteTitre = cossetteTitreImpl
