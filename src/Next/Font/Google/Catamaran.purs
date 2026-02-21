module Next.Font.Google.Catamaran where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import catamaranImpl :: forall r. { | r } -> FontConfig

catamaran :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
catamaran = catamaranImpl
