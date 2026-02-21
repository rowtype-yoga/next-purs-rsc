module Next.Font.Google.SirinStencil where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sirinStencilImpl :: forall r. { | r } -> FontConfig

sirinStencil :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sirinStencil = sirinStencilImpl
