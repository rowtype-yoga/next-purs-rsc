module Next.Font.Google.NotoSansNKoUnjoined where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansNKoUnjoinedImpl :: forall r. { | r } -> FontConfig

notoSansNKoUnjoined :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansNKoUnjoined = notoSansNKoUnjoinedImpl
