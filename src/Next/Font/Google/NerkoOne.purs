module Next.Font.Google.NerkoOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nerkoOneImpl :: forall r. { | r } -> FontConfig

nerkoOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nerkoOne = nerkoOneImpl
