module Next.Font.Google.IBMPlexSansKR where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iBMPlexSansKRImpl :: forall r. { | r } -> FontConfig

iBMPlexSansKR :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iBMPlexSansKR = iBMPlexSansKRImpl
