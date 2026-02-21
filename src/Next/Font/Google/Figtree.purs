module Next.Font.Google.Figtree where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import figtreeImpl :: forall r. { | r } -> FontConfig

figtree :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
figtree = figtreeImpl
