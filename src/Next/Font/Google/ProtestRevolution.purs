module Next.Font.Google.ProtestRevolution where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import protestRevolutionImpl :: forall r. { | r } -> FontConfig

protestRevolution :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
protestRevolution = protestRevolutionImpl
