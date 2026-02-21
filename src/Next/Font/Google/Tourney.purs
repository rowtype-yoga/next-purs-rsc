module Next.Font.Google.Tourney where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tourneyImpl :: forall r. { | r } -> FontConfig

tourney :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tourney = tourneyImpl
