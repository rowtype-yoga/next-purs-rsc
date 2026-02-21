module Next.Font.Google.GasoekOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gasoekOneImpl :: forall r. { | r } -> FontConfig

gasoekOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gasoekOne = gasoekOneImpl
