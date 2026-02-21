module Next.Font.Google.Homenaje where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import homenajeImpl :: forall r. { | r } -> FontConfig

homenaje :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
homenaje = homenajeImpl
