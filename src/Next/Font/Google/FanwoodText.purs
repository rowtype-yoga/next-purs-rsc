module Next.Font.Google.FanwoodText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fanwoodTextImpl :: forall r. { | r } -> FontConfig

fanwoodText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fanwoodText = fanwoodTextImpl
