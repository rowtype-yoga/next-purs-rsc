module Next.Font.Google.Tauri where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tauriImpl :: forall r. { | r } -> FontConfig

tauri :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tauri = tauriImpl
