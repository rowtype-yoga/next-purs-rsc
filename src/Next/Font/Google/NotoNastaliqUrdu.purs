module Next.Font.Google.NotoNastaliqUrdu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoNastaliqUrduImpl :: forall r. { | r } -> FontConfig

notoNastaliqUrdu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoNastaliqUrdu = notoNastaliqUrduImpl
