module Next.Font.Google.EricaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ericaOneImpl :: forall r. { | r } -> FontConfig

ericaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ericaOne = ericaOneImpl
