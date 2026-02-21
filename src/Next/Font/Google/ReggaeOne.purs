module Next.Font.Google.ReggaeOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import reggaeOneImpl :: forall r. { | r } -> FontConfig

reggaeOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
reggaeOne = reggaeOneImpl
