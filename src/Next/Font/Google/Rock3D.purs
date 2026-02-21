module Next.Font.Google.Rock3D where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rock3DImpl :: forall r. { | r } -> FontConfig

rock3D :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rock3D = rock3DImpl
