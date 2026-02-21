module Next.Font.Google.RacingSansOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import racingSansOneImpl :: forall r. { | r } -> FontConfig

racingSansOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
racingSansOne = racingSansOneImpl
