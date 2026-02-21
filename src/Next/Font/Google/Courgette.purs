module Next.Font.Google.Courgette where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import courgetteImpl :: forall r. { | r } -> FontConfig

courgette :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
courgette = courgetteImpl
