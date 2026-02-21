module Next.Font.Google.MetalMania where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import metalManiaImpl :: forall r. { | r } -> FontConfig

metalMania :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
metalMania = metalManiaImpl
