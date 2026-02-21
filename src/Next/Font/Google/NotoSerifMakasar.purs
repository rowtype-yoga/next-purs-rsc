module Next.Font.Google.NotoSerifMakasar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifMakasarImpl :: forall r. { | r } -> FontConfig

notoSerifMakasar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifMakasar = notoSerifMakasarImpl
