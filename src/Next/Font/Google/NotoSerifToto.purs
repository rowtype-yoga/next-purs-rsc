module Next.Font.Google.NotoSerifToto where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifTotoImpl :: forall r. { | r } -> FontConfig

notoSerifToto :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifToto = notoSerifTotoImpl
