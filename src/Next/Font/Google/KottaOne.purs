module Next.Font.Google.KottaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kottaOneImpl :: forall r. { | r } -> FontConfig

kottaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kottaOne = kottaOneImpl
