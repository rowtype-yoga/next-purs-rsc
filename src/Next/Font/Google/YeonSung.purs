module Next.Font.Google.YeonSung where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yeonSungImpl :: forall r. { | r } -> FontConfig

yeonSung :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yeonSung = yeonSungImpl
