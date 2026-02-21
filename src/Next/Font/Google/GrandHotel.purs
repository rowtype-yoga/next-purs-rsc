module Next.Font.Google.GrandHotel where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import grandHotelImpl :: forall r. { | r } -> FontConfig

grandHotel :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
grandHotel = grandHotelImpl
