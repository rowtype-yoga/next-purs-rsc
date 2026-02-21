module Next.Font.Google.StalinistOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stalinistOneImpl :: forall r. { | r } -> FontConfig

stalinistOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stalinistOne = stalinistOneImpl
