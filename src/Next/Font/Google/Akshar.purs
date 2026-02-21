module Next.Font.Google.Akshar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aksharImpl :: forall r. { | r } -> FontConfig

akshar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
akshar = aksharImpl
