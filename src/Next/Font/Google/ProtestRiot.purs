module Next.Font.Google.ProtestRiot where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import protestRiotImpl :: forall r. { | r } -> FontConfig

protestRiot :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
protestRiot = protestRiotImpl
