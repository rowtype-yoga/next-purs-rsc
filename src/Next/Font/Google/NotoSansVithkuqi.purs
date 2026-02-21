module Next.Font.Google.NotoSansVithkuqi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansVithkuqiImpl :: forall r. { | r } -> FontConfig

notoSansVithkuqi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansVithkuqi = notoSansVithkuqiImpl
