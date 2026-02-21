module Next.Font.Google.SigmarOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sigmarOneImpl :: forall r. { | r } -> FontConfig

sigmarOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sigmarOne = sigmarOneImpl
