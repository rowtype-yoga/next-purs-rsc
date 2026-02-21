module Next.Font.Google.BigshotOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bigshotOneImpl :: forall r. { | r } -> FontConfig

bigshotOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bigshotOne = bigshotOneImpl
