module Next.Font.Google.SawarabiGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sawarabiGothicImpl :: forall r. { | r } -> FontConfig

sawarabiGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sawarabiGothic = sawarabiGothicImpl
