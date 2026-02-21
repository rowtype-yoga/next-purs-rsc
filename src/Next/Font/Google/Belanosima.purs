module Next.Font.Google.Belanosima where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import belanosimaImpl :: forall r. { | r } -> FontConfig

belanosima :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
belanosima = belanosimaImpl
