module Next.Font.Google.VujahdayScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vujahdayScriptImpl :: forall r. { | r } -> FontConfig

vujahdayScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vujahdayScript = vujahdayScriptImpl
