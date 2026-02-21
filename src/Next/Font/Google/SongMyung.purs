module Next.Font.Google.SongMyung where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import songMyungImpl :: forall r. { | r } -> FontConfig

songMyung :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
songMyung = songMyungImpl
