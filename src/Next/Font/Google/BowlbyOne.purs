module Next.Font.Google.BowlbyOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bowlbyOneImpl :: forall r. { | r } -> FontConfig

bowlbyOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bowlbyOne = bowlbyOneImpl
