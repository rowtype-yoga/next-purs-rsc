module Next.Font.Google.EmblemaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import emblemaOneImpl :: forall r. { | r } -> FontConfig

emblemaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
emblemaOne = emblemaOneImpl
