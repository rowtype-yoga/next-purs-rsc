module Next.Font.Google.AllertaStencil where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import allertaStencilImpl :: forall r. { | r } -> FontConfig

allertaStencil :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
allertaStencil = allertaStencilImpl
