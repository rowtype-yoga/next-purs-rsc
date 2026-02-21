module Next.Font.Google.Sacramento where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sacramentoImpl :: forall r. { | r } -> FontConfig

sacramento :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sacramento = sacramentoImpl
