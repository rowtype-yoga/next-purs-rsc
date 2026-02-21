module Next.Font.Google.Felipa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import felipaImpl :: forall r. { | r } -> FontConfig

felipa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
felipa = felipaImpl
