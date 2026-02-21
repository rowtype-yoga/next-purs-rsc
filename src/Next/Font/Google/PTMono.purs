module Next.Font.Google.PTMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pTMonoImpl :: forall r. { | r } -> FontConfig

pTMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pTMono = pTMonoImpl
