module Next.Font.Google.Montserrat where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import montserratImpl :: forall r. { | r } -> FontConfig

montserrat :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
montserrat = montserratImpl
