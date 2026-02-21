module Next.Font.Google.NotoSansVai where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansVaiImpl :: forall r. { | r } -> FontConfig

notoSansVai :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansVai = notoSansVaiImpl
