module Next.Font.Google.NewTegomin where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import newTegominImpl :: forall r. { | r } -> FontConfig

newTegomin :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
newTegomin = newTegominImpl
