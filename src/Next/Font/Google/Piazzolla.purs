module Next.Font.Google.Piazzolla where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import piazzollaImpl :: forall r. { | r } -> FontConfig

piazzolla :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
piazzolla = piazzollaImpl
