module Next.Font.Google.Grandstander where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import grandstanderImpl :: forall r. { | r } -> FontConfig

grandstander :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
grandstander = grandstanderImpl
