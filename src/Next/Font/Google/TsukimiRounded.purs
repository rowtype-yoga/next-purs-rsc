module Next.Font.Google.TsukimiRounded where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tsukimiRoundedImpl :: forall r. { | r } -> FontConfig

tsukimiRounded :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tsukimiRounded = tsukimiRoundedImpl
