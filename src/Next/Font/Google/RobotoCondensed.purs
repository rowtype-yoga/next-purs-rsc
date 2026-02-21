module Next.Font.Google.RobotoCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import robotoCondensedImpl :: forall r. { | r } -> FontConfig

robotoCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
robotoCondensed = robotoCondensedImpl
