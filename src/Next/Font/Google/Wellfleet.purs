module Next.Font.Google.Wellfleet where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import wellfleetImpl :: forall r. { | r } -> FontConfig

wellfleet :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
wellfleet = wellfleetImpl
