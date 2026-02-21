module Next.Font.Google.Fondamento where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fondamentoImpl :: forall r. { | r } -> FontConfig

fondamento :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fondamento = fondamentoImpl
