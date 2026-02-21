module Next.Font.Google.Prata where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import prataImpl :: forall r. { | r } -> FontConfig

prata :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
prata = prataImpl
