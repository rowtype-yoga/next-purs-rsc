module Next.Font.Google.SlacksideOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import slacksideOneImpl :: forall r. { | r } -> FontConfig

slacksideOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
slacksideOne = slacksideOneImpl
