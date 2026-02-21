module Next.Font.Google.LisuBosa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lisuBosaImpl :: forall r. { | r } -> FontConfig

lisuBosa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lisuBosa = lisuBosaImpl
