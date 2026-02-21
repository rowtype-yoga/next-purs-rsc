module Next.Font.Google.TheGirlNextDoor where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import theGirlNextDoorImpl :: forall r. { | r } -> FontConfig

theGirlNextDoor :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
theGirlNextDoor = theGirlNextDoorImpl
