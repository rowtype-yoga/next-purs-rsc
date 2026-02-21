module Next.Font.Google.NotoSerifGrantha where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifGranthaImpl :: forall r. { | r } -> FontConfig

notoSerifGrantha :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifGrantha = notoSerifGranthaImpl
