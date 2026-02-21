module Next.Font.Google.Rufina where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rufinaImpl :: forall r. { | r } -> FontConfig

rufina :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rufina = rufinaImpl
