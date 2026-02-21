module Next.Font.Google.LobsterTwo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lobsterTwoImpl :: forall r. { | r } -> FontConfig

lobsterTwo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lobsterTwo = lobsterTwoImpl
