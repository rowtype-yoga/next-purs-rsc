module Next.Font.Google.SpecialElite where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import specialEliteImpl :: forall r. { | r } -> FontConfig

specialElite :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
specialElite = specialEliteImpl
