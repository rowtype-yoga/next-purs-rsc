module Next.Font.Google.Solitreo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import solitreoImpl :: forall r. { | r } -> FontConfig

solitreo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
solitreo = solitreoImpl
