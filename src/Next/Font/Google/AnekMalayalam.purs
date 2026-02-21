module Next.Font.Google.AnekMalayalam where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anekMalayalamImpl :: forall r. { | r } -> FontConfig

anekMalayalam :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anekMalayalam = anekMalayalamImpl
