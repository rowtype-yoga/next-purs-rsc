module Next.Font.Google.NotoSerifBalinese where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifBalineseImpl :: forall r. { | r } -> FontConfig

notoSerifBalinese :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifBalinese = notoSerifBalineseImpl
