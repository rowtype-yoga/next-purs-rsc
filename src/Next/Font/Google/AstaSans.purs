module Next.Font.Google.AstaSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import astaSansImpl :: forall r. { | r } -> FontConfig

astaSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
astaSans = astaSansImpl
