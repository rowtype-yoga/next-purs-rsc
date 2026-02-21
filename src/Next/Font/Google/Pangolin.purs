module Next.Font.Google.Pangolin where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pangolinImpl :: forall r. { | r } -> FontConfig

pangolin :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pangolin = pangolinImpl
