module Next.Font.Google.Sevillana where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sevillanaImpl :: forall r. { | r } -> FontConfig

sevillana :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sevillana = sevillanaImpl
