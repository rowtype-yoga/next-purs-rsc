module Next.Font.Google.InstrumentSerif where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import instrumentSerifImpl :: forall r. { | r } -> FontConfig

instrumentSerif :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
instrumentSerif = instrumentSerifImpl
