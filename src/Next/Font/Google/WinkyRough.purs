module Next.Font.Google.WinkyRough where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import winkyRoughImpl :: forall r. { | r } -> FontConfig

winkyRough :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
winkyRough = winkyRoughImpl
