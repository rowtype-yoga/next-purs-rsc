module Next.Font.Google.BagelFatOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bagelFatOneImpl :: forall r. { | r } -> FontConfig

bagelFatOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bagelFatOne = bagelFatOneImpl
