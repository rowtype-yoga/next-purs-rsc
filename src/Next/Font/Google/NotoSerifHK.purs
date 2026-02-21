module Next.Font.Google.NotoSerifHK where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifHKImpl :: forall r. { | r } -> FontConfig

notoSerifHK :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifHK = notoSerifHKImpl
