module Next.Font.Google.DeliusUnicase where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import deliusUnicaseImpl :: forall r. { | r } -> FontConfig

deliusUnicase :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
deliusUnicase = deliusUnicaseImpl
