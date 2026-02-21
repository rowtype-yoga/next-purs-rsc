module Next.Font.Google.RaviPrakash where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import raviPrakashImpl :: forall r. { | r } -> FontConfig

raviPrakash :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
raviPrakash = raviPrakashImpl
