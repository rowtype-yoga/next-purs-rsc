module Next.Font.Google.PirataOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pirataOneImpl :: forall r. { | r } -> FontConfig

pirataOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pirataOne = pirataOneImpl
