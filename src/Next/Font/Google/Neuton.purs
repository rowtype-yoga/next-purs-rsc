module Next.Font.Google.Neuton where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import neutonImpl :: forall r. { | r } -> FontConfig

neuton :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
neuton = neutonImpl
