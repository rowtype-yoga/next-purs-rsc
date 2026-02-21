module Next.Font.Google.Sumana where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sumanaImpl :: forall r. { | r } -> FontConfig

sumana :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sumana = sumanaImpl
