module Next.Font.Google.Chenla where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chenlaImpl :: forall r. { | r } -> FontConfig

chenla :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chenla = chenlaImpl
