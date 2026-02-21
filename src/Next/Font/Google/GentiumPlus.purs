module Next.Font.Google.GentiumPlus where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gentiumPlusImpl :: forall r. { | r } -> FontConfig

gentiumPlus :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gentiumPlus = gentiumPlusImpl
