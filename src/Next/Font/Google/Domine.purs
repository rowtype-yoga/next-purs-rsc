module Next.Font.Google.Domine where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import domineImpl :: forall r. { | r } -> FontConfig

domine :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
domine = domineImpl
