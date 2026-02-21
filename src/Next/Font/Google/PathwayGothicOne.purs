module Next.Font.Google.PathwayGothicOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pathwayGothicOneImpl :: forall r. { | r } -> FontConfig

pathwayGothicOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pathwayGothicOne = pathwayGothicOneImpl
