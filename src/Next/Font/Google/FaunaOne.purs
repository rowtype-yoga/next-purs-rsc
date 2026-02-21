module Next.Font.Google.FaunaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import faunaOneImpl :: forall r. { | r } -> FontConfig

faunaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
faunaOne = faunaOneImpl
