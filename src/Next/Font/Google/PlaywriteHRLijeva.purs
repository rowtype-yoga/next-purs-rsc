module Next.Font.Google.PlaywriteHRLijeva where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteHRLijevaImpl :: forall r. { | r } -> FontConfig

playwriteHRLijeva :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteHRLijeva = playwriteHRLijevaImpl
