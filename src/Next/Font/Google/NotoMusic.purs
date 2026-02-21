module Next.Font.Google.NotoMusic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoMusicImpl :: forall r. { | r } -> FontConfig

notoMusic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoMusic = notoMusicImpl
