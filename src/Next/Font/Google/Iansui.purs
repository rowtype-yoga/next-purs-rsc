module Next.Font.Google.Iansui where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iansuiImpl :: forall r. { | r } -> FontConfig

iansui :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iansui = iansuiImpl
