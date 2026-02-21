module Next.Font.Google.PTSansNarrow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pTSansNarrowImpl :: forall r. { | r } -> FontConfig

pTSansNarrow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pTSansNarrow = pTSansNarrowImpl
