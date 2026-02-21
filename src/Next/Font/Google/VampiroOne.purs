module Next.Font.Google.VampiroOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vampiroOneImpl :: forall r. { | r } -> FontConfig

vampiroOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vampiroOne = vampiroOneImpl
