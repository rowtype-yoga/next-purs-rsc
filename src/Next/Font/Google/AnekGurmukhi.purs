module Next.Font.Google.AnekGurmukhi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anekGurmukhiImpl :: forall r. { | r } -> FontConfig

anekGurmukhi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anekGurmukhi = anekGurmukhiImpl
