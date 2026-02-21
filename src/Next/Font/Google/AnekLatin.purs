module Next.Font.Google.AnekLatin where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anekLatinImpl :: forall r. { | r } -> FontConfig

anekLatin :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anekLatin = anekLatinImpl
