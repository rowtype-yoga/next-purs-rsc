module Next.Font.Google.FiraSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import firaSansImpl :: forall r. { | r } -> FontConfig

firaSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
firaSans = firaSansImpl
