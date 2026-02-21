module Next.Font.Google.NotoSerifOldUyghur where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifOldUyghurImpl :: forall r. { | r } -> FontConfig

notoSerifOldUyghur :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifOldUyghur = notoSerifOldUyghurImpl
