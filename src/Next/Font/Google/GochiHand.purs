module Next.Font.Google.GochiHand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gochiHandImpl :: forall r. { | r } -> FontConfig

gochiHand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gochiHand = gochiHandImpl
