module Next.Font.Google.FrancoisOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import francoisOneImpl :: forall r. { | r } -> FontConfig

francoisOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
francoisOne = francoisOneImpl
