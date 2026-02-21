module Next.Font.Google.TrainOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import trainOneImpl :: forall r. { | r } -> FontConfig

trainOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
trainOne = trainOneImpl
