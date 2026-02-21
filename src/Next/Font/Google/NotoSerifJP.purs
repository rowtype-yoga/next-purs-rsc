module Next.Font.Google.NotoSerifJP where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifJPImpl :: forall r. { | r } -> FontConfig

notoSerifJP :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifJP = notoSerifJPImpl
