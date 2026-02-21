module Next.Font.Google.Cinzel where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cinzelImpl :: forall r. { | r } -> FontConfig

cinzel :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cinzel = cinzelImpl
