module Next.Font.Google.ConcertOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import concertOneImpl :: forall r. { | r } -> FontConfig

concertOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
concertOne = concertOneImpl
