module Next.Font.Google.Rationale where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rationaleImpl :: forall r. { | r } -> FontConfig

rationale :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rationale = rationaleImpl
