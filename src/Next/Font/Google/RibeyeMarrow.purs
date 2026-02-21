module Next.Font.Google.RibeyeMarrow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ribeyeMarrowImpl :: forall r. { | r } -> FontConfig

ribeyeMarrow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ribeyeMarrow = ribeyeMarrowImpl
