module Next.Font.Google.Astloch where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import astlochImpl :: forall r. { | r } -> FontConfig

astloch :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
astloch = astlochImpl
