module Next.Font.Google.Oldenburg where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import oldenburgImpl :: forall r. { | r } -> FontConfig

oldenburg :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
oldenburg = oldenburgImpl
