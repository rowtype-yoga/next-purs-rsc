module Next.Font.Google.BigShouldersStencil where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bigShouldersStencilImpl :: forall r. { | r } -> FontConfig

bigShouldersStencil :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bigShouldersStencil = bigShouldersStencilImpl
