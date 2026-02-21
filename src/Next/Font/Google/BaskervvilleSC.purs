module Next.Font.Google.BaskervvilleSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import baskervvilleSCImpl :: forall r. { | r } -> FontConfig

baskervvilleSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
baskervvilleSC = baskervvilleSCImpl
