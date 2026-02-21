module Next.Font.Google.Kameron where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kameronImpl :: forall r. { | r } -> FontConfig

kameron :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kameron = kameronImpl
