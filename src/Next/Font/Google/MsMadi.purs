module Next.Font.Google.MsMadi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import msMadiImpl :: forall r. { | r } -> FontConfig

msMadi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
msMadi = msMadiImpl
