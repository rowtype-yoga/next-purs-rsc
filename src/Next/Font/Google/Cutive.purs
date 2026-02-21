module Next.Font.Google.Cutive where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cutiveImpl :: forall r. { | r } -> FontConfig

cutive :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cutive = cutiveImpl
