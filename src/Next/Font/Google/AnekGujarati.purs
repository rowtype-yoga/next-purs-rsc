module Next.Font.Google.AnekGujarati where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anekGujaratiImpl :: forall r. { | r } -> FontConfig

anekGujarati :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anekGujarati = anekGujaratiImpl
