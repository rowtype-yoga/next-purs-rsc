module Next.Font.Google.PoiretOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import poiretOneImpl :: forall r. { | r } -> FontConfig

poiretOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
poiretOne = poiretOneImpl
