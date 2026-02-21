module Next.Font.Google.Newsreader where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import newsreaderImpl :: forall r. { | r } -> FontConfig

newsreader :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
newsreader = newsreaderImpl
