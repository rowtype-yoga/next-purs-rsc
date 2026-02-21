module Next.Font.Google.GentiumBookPlus where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gentiumBookPlusImpl :: forall r. { | r } -> FontConfig

gentiumBookPlus :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gentiumBookPlus = gentiumBookPlusImpl
