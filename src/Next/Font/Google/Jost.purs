module Next.Font.Google.Jost where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jostImpl :: forall r. { | r } -> FontConfig

jost :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jost = jostImpl
