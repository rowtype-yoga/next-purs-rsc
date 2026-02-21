module Next.Font.Google.NotoSansMultani where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMultaniImpl :: forall r. { | r } -> FontConfig

notoSansMultani :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMultani = notoSansMultaniImpl
