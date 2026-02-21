module Next.Font.Google.NotoSansNagMundari where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansNagMundariImpl :: forall r. { | r } -> FontConfig

notoSansNagMundari :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansNagMundari = notoSansNagMundariImpl
