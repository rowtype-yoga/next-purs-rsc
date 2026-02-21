module Next.Font.Google.MarckScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import marckScriptImpl :: forall r. { | r } -> FontConfig

marckScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
marckScript = marckScriptImpl
