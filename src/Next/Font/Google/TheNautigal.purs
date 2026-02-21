module Next.Font.Google.TheNautigal where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import theNautigalImpl :: forall r. { | r } -> FontConfig

theNautigal :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
theNautigal = theNautigalImpl
