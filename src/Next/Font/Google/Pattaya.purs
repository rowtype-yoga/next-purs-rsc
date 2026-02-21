module Next.Font.Google.Pattaya where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pattayaImpl :: forall r. { | r } -> FontConfig

pattaya :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pattaya = pattayaImpl
