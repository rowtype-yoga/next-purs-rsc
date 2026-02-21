module Next.Font.Google.TiltWarp where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tiltWarpImpl :: forall r. { | r } -> FontConfig

tiltWarp :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tiltWarp = tiltWarpImpl
