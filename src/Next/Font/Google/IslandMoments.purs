module Next.Font.Google.IslandMoments where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import islandMomentsImpl :: forall r. { | r } -> FontConfig

islandMoments :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
islandMoments = islandMomentsImpl
