module Next.Font.Google.Bellefair where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bellefairImpl :: forall r. { | r } -> FontConfig

bellefair :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bellefair = bellefairImpl
