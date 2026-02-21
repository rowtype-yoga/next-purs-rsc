module Next.Font.Google.Parisienne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import parisienneImpl :: forall r. { | r } -> FontConfig

parisienne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
parisienne = parisienneImpl
