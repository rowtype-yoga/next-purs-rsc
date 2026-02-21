module Next.Font.Google.SeymourOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import seymourOneImpl :: forall r. { | r } -> FontConfig

seymourOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
seymourOne = seymourOneImpl
