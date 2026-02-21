module Next.Font.Google.GoblinOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import goblinOneImpl :: forall r. { | r } -> FontConfig

goblinOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
goblinOne = goblinOneImpl
