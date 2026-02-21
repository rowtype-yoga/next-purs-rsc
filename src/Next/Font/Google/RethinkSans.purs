module Next.Font.Google.RethinkSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rethinkSansImpl :: forall r. { | r } -> FontConfig

rethinkSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rethinkSans = rethinkSansImpl
