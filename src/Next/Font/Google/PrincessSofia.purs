module Next.Font.Google.PrincessSofia where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import princessSofiaImpl :: forall r. { | r } -> FontConfig

princessSofia :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
princessSofia = princessSofiaImpl
