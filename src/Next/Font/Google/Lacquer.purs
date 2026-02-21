module Next.Font.Google.Lacquer where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lacquerImpl :: forall r. { | r } -> FontConfig

lacquer :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lacquer = lacquerImpl
