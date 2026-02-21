module Next.Font.Google.NunitoSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nunitoSansImpl :: forall r. { | r } -> FontConfig

nunitoSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nunitoSans = nunitoSansImpl
