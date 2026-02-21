module Next.Font.Google.HappyMonkey where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import happyMonkeyImpl :: forall r. { | r } -> FontConfig

happyMonkey :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
happyMonkey = happyMonkeyImpl
