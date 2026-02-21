module Next.Font.Google.Jomolhari where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jomolhariImpl :: forall r. { | r } -> FontConfig

jomolhari :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jomolhari = jomolhariImpl
