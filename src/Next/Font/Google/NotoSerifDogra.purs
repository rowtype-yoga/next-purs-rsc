module Next.Font.Google.NotoSerifDogra where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifDograImpl :: forall r. { | r } -> FontConfig

notoSerifDogra :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifDogra = notoSerifDograImpl
