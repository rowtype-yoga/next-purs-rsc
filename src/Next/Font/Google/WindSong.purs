module Next.Font.Google.WindSong where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import windSongImpl :: forall r. { | r } -> FontConfig

windSong :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
windSong = windSongImpl
