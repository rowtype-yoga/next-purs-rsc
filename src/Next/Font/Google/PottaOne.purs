module Next.Font.Google.PottaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pottaOneImpl :: forall r. { | r } -> FontConfig

pottaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pottaOne = pottaOneImpl
