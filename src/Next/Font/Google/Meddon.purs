module Next.Font.Google.Meddon where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import meddonImpl :: forall r. { | r } -> FontConfig

meddon :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
meddon = meddonImpl
