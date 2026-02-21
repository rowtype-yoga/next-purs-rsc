module Next.Font.Google.CherryBombOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cherryBombOneImpl :: forall r. { | r } -> FontConfig

cherryBombOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cherryBombOne = cherryBombOneImpl
