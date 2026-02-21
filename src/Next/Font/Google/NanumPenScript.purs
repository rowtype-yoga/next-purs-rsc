module Next.Font.Google.NanumPenScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nanumPenScriptImpl :: forall r. { | r } -> FontConfig

nanumPenScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nanumPenScript = nanumPenScriptImpl
