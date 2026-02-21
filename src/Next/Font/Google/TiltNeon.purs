module Next.Font.Google.TiltNeon where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tiltNeonImpl :: forall r. { | r } -> FontConfig

tiltNeon :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tiltNeon = tiltNeonImpl
