module Next.Font.Google.Padauk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import padaukImpl :: forall r. { | r } -> FontConfig

padauk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
padauk = padaukImpl
