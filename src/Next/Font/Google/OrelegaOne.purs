module Next.Font.Google.OrelegaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import orelegaOneImpl :: forall r. { | r } -> FontConfig

orelegaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
orelegaOne = orelegaOneImpl
