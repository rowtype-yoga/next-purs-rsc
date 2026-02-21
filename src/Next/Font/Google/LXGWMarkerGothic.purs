module Next.Font.Google.LXGWMarkerGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lXGWMarkerGothicImpl :: forall r. { | r } -> FontConfig

lXGWMarkerGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lXGWMarkerGothic = lXGWMarkerGothicImpl
