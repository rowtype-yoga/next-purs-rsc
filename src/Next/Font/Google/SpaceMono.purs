module Next.Font.Google.SpaceMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import spaceMonoImpl :: forall r. { | r } -> FontConfig

spaceMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
spaceMono = spaceMonoImpl
