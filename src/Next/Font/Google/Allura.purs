module Next.Font.Google.Allura where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alluraImpl :: forall r. { | r } -> FontConfig

allura :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
allura = alluraImpl
