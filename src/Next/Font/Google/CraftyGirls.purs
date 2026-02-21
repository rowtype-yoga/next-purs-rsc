module Next.Font.Google.CraftyGirls where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import craftyGirlsImpl :: forall r. { | r } -> FontConfig

craftyGirls :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
craftyGirls = craftyGirlsImpl
