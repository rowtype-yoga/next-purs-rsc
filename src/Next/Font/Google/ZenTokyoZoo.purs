module Next.Font.Google.ZenTokyoZoo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zenTokyoZooImpl :: forall r. { | r } -> FontConfig

zenTokyoZoo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zenTokyoZoo = zenTokyoZooImpl
