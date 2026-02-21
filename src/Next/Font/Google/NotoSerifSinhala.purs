module Next.Font.Google.NotoSerifSinhala where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifSinhalaImpl :: forall r. { | r } -> FontConfig

notoSerifSinhala :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifSinhala = notoSerifSinhalaImpl
