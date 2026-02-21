module Next.Font.Google.Harmattan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import harmattanImpl :: forall r. { | r } -> FontConfig

harmattan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
harmattan = harmattanImpl
