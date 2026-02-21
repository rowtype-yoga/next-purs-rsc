module Next.Font.Google.Varela where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import varelaImpl :: forall r. { | r } -> FontConfig

varela :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
varela = varelaImpl
