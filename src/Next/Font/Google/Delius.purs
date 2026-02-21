module Next.Font.Google.Delius where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import deliusImpl :: forall r. { | r } -> FontConfig

delius :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
delius = deliusImpl
