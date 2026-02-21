module Next.Font.Google.BlakaHollow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import blakaHollowImpl :: forall r. { | r } -> FontConfig

blakaHollow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
blakaHollow = blakaHollowImpl
