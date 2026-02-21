module Next.Font.Google.OpenSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import openSansImpl :: forall r. { | r } -> FontConfig

openSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
openSans = openSansImpl
