module Next.Font.Google.InterTight where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import interTightImpl :: forall r. { | r } -> FontConfig

interTight :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
interTight = interTightImpl
