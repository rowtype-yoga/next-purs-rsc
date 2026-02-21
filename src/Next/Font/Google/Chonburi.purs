module Next.Font.Google.Chonburi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chonburiImpl :: forall r. { | r } -> FontConfig

chonburi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chonburi = chonburiImpl
