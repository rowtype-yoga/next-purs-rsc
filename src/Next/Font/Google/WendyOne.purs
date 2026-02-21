module Next.Font.Google.WendyOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import wendyOneImpl :: forall r. { | r } -> FontConfig

wendyOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
wendyOne = wendyOneImpl
