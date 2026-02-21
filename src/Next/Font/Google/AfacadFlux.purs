module Next.Font.Google.AfacadFlux where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import afacadFluxImpl :: forall r. { | r } -> FontConfig

afacadFlux :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
afacadFlux = afacadFluxImpl
