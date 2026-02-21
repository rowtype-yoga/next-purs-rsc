module Next.Font.Google.PinyonScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pinyonScriptImpl :: forall r. { | r } -> FontConfig

pinyonScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pinyonScript = pinyonScriptImpl
