module Next.Font.Google.NotoSansPhagsPa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansPhagsPaImpl :: forall r. { | r } -> FontConfig

notoSansPhagsPa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansPhagsPa = notoSansPhagsPaImpl
