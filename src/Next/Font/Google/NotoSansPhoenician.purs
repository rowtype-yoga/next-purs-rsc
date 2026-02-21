module Next.Font.Google.NotoSansPhoenician where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansPhoenicianImpl :: forall r. { | r } -> FontConfig

notoSansPhoenician :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansPhoenician = notoSansPhoenicianImpl
