module Next.Font.Google.Alegreya where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alegreyaImpl :: forall r. { | r } -> FontConfig

alegreya :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alegreya = alegreyaImpl
