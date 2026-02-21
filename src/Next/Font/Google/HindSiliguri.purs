module Next.Font.Google.HindSiliguri where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hindSiliguriImpl :: forall r. { | r } -> FontConfig

hindSiliguri :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hindSiliguri = hindSiliguriImpl
