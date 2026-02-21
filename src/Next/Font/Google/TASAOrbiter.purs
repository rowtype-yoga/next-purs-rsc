module Next.Font.Google.TASAOrbiter where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tASAOrbiterImpl :: forall r. { | r } -> FontConfig

tASAOrbiter :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tASAOrbiter = tASAOrbiterImpl
