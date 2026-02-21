module Next.Font.Google.PTSansCaption where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pTSansCaptionImpl :: forall r. { | r } -> FontConfig

pTSansCaption :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pTSansCaption = pTSansCaptionImpl
