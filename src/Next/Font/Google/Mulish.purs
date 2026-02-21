module Next.Font.Google.Mulish where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mulishImpl :: forall r. { | r } -> FontConfig

mulish :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mulish = mulishImpl
