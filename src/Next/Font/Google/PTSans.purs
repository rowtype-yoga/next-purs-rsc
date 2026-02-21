module Next.Font.Google.PTSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pTSansImpl :: forall r. { | r } -> FontConfig

pTSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pTSans = pTSansImpl
