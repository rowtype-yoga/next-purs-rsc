module Next.Font.Google.Calistoga where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import calistogaImpl :: forall r. { | r } -> FontConfig

calistoga :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
calistoga = calistogaImpl
