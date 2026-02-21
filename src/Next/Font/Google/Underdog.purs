module Next.Font.Google.Underdog where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import underdogImpl :: forall r. { | r } -> FontConfig

underdog :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
underdog = underdogImpl
