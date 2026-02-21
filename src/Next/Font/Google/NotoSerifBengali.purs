module Next.Font.Google.NotoSerifBengali where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifBengaliImpl :: forall r. { | r } -> FontConfig

notoSerifBengali :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifBengali = notoSerifBengaliImpl
