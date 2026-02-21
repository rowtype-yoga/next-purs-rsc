module Next.Font.Google.InriaSerif where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import inriaSerifImpl :: forall r. { | r } -> FontConfig

inriaSerif :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
inriaSerif = inriaSerifImpl
