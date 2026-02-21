module Next.Font.Google.NTR where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nTRImpl :: forall r. { | r } -> FontConfig

nTR :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nTR = nTRImpl
