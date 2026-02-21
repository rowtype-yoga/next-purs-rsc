module Next.Font.Google.Marcellus where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import marcellusImpl :: forall r. { | r } -> FontConfig

marcellus :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
marcellus = marcellusImpl
