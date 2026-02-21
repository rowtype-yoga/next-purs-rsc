module Next.Font.Google.CroissantOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import croissantOneImpl :: forall r. { | r } -> FontConfig

croissantOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
croissantOne = croissantOneImpl
