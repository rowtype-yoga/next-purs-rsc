module Next.Font.Google.Gabriela where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gabrielaImpl :: forall r. { | r } -> FontConfig

gabriela :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gabriela = gabrielaImpl
