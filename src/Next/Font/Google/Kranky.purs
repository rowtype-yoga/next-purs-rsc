module Next.Font.Google.Kranky where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import krankyImpl :: forall r. { | r } -> FontConfig

kranky :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kranky = krankyImpl
