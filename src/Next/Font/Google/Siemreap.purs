module Next.Font.Google.Siemreap where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import siemreapImpl :: forall r. { | r } -> FontConfig

siemreap :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
siemreap = siemreapImpl
