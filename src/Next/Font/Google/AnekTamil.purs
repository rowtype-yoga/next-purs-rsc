module Next.Font.Google.AnekTamil where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anekTamilImpl :: forall r. { | r } -> FontConfig

anekTamil :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anekTamil = anekTamilImpl
