module Next.Font.Google.KaushanScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kaushanScriptImpl :: forall r. { | r } -> FontConfig

kaushanScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kaushanScript = kaushanScriptImpl
