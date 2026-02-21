module Next.Font.Google.PermanentMarker where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import permanentMarkerImpl :: forall r. { | r } -> FontConfig

permanentMarker :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
permanentMarker = permanentMarkerImpl
