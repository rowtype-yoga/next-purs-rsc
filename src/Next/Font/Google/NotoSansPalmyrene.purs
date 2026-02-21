module Next.Font.Google.NotoSansPalmyrene where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansPalmyreneImpl :: forall r. { | r } -> FontConfig

notoSansPalmyrene :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansPalmyrene = notoSansPalmyreneImpl
