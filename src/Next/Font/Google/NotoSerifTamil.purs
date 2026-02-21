module Next.Font.Google.NotoSerifTamil where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifTamilImpl :: forall r. { | r } -> FontConfig

notoSerifTamil :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifTamil = notoSerifTamilImpl
