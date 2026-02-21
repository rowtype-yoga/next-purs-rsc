module Next.Font.Google.Sirivennela where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sirivennelaImpl :: forall r. { | r } -> FontConfig

sirivennela :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sirivennela = sirivennelaImpl
