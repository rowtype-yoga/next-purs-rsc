module Next.Font.Google.ModernAntiqua where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import modernAntiquaImpl :: forall r. { | r } -> FontConfig

modernAntiqua :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
modernAntiqua = modernAntiquaImpl
