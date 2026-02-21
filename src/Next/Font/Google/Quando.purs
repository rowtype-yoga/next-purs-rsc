module Next.Font.Google.Quando where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import quandoImpl :: forall r. { | r } -> FontConfig

quando :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
quando = quandoImpl
