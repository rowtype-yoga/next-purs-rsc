module Next.Font.Google.NanumBrushScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nanumBrushScriptImpl :: forall r. { | r } -> FontConfig

nanumBrushScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nanumBrushScript = nanumBrushScriptImpl
