module Next.Font.Google.IBMPlexSansCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iBMPlexSansCondensedImpl :: forall r. { | r } -> FontConfig

iBMPlexSansCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iBMPlexSansCondensed = iBMPlexSansCondensedImpl
