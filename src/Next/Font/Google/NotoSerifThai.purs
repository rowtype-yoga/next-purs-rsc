module Next.Font.Google.NotoSerifThai where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifThaiImpl :: forall r. { | r } -> FontConfig

notoSerifThai :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifThai = notoSerifThaiImpl
