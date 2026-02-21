module Next.Font.Google.Kalam where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kalamImpl :: forall r. { | r } -> FontConfig

kalam :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kalam = kalamImpl
