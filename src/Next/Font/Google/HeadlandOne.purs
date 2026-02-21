module Next.Font.Google.HeadlandOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import headlandOneImpl :: forall r. { | r } -> FontConfig

headlandOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
headlandOne = headlandOneImpl
