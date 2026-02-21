module Next.Font.Google.Asap where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import asapImpl :: forall r. { | r } -> FontConfig

asap :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
asap = asapImpl
