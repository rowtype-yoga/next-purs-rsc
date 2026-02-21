module Next.Font.Google.DarumadropOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import darumadropOneImpl :: forall r. { | r } -> FontConfig

darumadropOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
darumadropOne = darumadropOneImpl
