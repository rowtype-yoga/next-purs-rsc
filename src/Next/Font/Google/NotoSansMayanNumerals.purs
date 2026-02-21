module Next.Font.Google.NotoSansMayanNumerals where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMayanNumeralsImpl :: forall r. { | r } -> FontConfig

notoSansMayanNumerals :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMayanNumerals = notoSansMayanNumeralsImpl
