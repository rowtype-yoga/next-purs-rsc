module Next.Font.Google.IBMPlexSansJP where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iBMPlexSansJPImpl :: forall r. { | r } -> FontConfig

iBMPlexSansJP :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iBMPlexSansJP = iBMPlexSansJPImpl
