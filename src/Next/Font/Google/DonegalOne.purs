module Next.Font.Google.DonegalOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import donegalOneImpl :: forall r. { | r } -> FontConfig

donegalOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
donegalOne = donegalOneImpl
