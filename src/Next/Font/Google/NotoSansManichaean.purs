module Next.Font.Google.NotoSansManichaean where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansManichaeanImpl :: forall r. { | r } -> FontConfig

notoSansManichaean :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansManichaean = notoSansManichaeanImpl
