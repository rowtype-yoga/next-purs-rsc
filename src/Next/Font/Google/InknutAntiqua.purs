module Next.Font.Google.InknutAntiqua where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import inknutAntiquaImpl :: forall r. { | r } -> FontConfig

inknutAntiqua :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
inknutAntiqua = inknutAntiquaImpl
