module Next.Font.Google.PTSerif where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pTSerifImpl :: forall r. { | r } -> FontConfig

pTSerif :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pTSerif = pTSerifImpl
