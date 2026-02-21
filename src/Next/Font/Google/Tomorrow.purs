module Next.Font.Google.Tomorrow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tomorrowImpl :: forall r. { | r } -> FontConfig

tomorrow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tomorrow = tomorrowImpl
