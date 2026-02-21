module Next.Font.Google.Kalnia where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kalniaImpl :: forall r. { | r } -> FontConfig

kalnia :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kalnia = kalniaImpl
