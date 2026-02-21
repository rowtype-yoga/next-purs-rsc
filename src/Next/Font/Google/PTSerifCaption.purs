module Next.Font.Google.PTSerifCaption where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pTSerifCaptionImpl :: forall r. { | r } -> FontConfig

pTSerifCaption :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pTSerifCaption = pTSerifCaptionImpl
