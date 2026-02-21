module Next.Font.Google.Buenard where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import buenardImpl :: forall r. { | r } -> FontConfig

buenard :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
buenard = buenardImpl
