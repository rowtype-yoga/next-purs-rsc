module Next.Font.Google.DenkOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import denkOneImpl :: forall r. { | r } -> FontConfig

denkOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
denkOne = denkOneImpl
