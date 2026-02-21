module Next.Font.Google.Bangers where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bangersImpl :: forall r. { | r } -> FontConfig

bangers :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bangers = bangersImpl
