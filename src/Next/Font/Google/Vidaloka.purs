module Next.Font.Google.Vidaloka where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vidalokaImpl :: forall r. { | r } -> FontConfig

vidaloka :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vidaloka = vidalokaImpl
