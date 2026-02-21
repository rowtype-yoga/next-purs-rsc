module Next.Font.Google.Peralta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import peraltaImpl :: forall r. { | r } -> FontConfig

peralta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
peralta = peraltaImpl
