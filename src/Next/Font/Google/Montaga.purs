module Next.Font.Google.Montaga where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import montagaImpl :: forall r. { | r } -> FontConfig

montaga :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
montaga = montagaImpl
