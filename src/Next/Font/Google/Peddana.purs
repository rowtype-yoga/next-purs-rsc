module Next.Font.Google.Peddana where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import peddanaImpl :: forall r. { | r } -> FontConfig

peddana :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
peddana = peddanaImpl
