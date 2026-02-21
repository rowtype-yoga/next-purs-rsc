module Next.Font.Google.NotoSerifTC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifTCImpl :: forall r. { | r } -> FontConfig

notoSerifTC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifTC = notoSerifTCImpl
