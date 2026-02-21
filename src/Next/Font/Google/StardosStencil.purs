module Next.Font.Google.StardosStencil where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stardosStencilImpl :: forall r. { | r } -> FontConfig

stardosStencil :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stardosStencil = stardosStencilImpl
