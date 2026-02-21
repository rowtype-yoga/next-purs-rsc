module Next.Font.Google.MountainsofChristmas where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mountainsofChristmasImpl :: forall r. { | r } -> FontConfig

mountainsofChristmas :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mountainsofChristmas = mountainsofChristmasImpl
