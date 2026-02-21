module Next.Font.Google.CherrySwash where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cherrySwashImpl :: forall r. { | r } -> FontConfig

cherrySwash :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cherrySwash = cherrySwashImpl
