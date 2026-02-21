module Next.Font.Google.WaitingfortheSunrise where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import waitingfortheSunriseImpl :: forall r. { | r } -> FontConfig

waitingfortheSunrise :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
waitingfortheSunrise = waitingfortheSunriseImpl
