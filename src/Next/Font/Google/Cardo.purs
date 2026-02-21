module Next.Font.Google.Cardo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cardoImpl :: forall r. { | r } -> FontConfig

cardo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cardo = cardoImpl
