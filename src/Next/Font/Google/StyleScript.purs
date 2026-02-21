module Next.Font.Google.StyleScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import styleScriptImpl :: forall r. { | r } -> FontConfig

styleScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
styleScript = styleScriptImpl
