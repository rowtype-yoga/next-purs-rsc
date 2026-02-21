module Next.Font.Google.AlmendraDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import almendraDisplayImpl :: forall r. { | r } -> FontConfig

almendraDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
almendraDisplay = almendraDisplayImpl
