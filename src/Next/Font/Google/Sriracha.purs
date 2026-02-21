module Next.Font.Google.Sriracha where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import srirachaImpl :: forall r. { | r } -> FontConfig

sriracha :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sriracha = srirachaImpl
