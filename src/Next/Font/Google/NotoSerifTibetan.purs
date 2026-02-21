module Next.Font.Google.NotoSerifTibetan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifTibetanImpl :: forall r. { | r } -> FontConfig

notoSerifTibetan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifTibetan = notoSerifTibetanImpl
