module Next.Font.Google.SonsieOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sonsieOneImpl :: forall r. { | r } -> FontConfig

sonsieOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sonsieOne = sonsieOneImpl
