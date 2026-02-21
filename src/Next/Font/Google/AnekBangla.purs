module Next.Font.Google.AnekBangla where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anekBanglaImpl :: forall r. { | r } -> FontConfig

anekBangla :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anekBangla = anekBanglaImpl
