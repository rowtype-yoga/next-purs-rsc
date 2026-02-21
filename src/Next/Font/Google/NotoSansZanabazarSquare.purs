module Next.Font.Google.NotoSansZanabazarSquare where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansZanabazarSquareImpl :: forall r. { | r } -> FontConfig

notoSansZanabazarSquare :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansZanabazarSquare = notoSansZanabazarSquareImpl
