module Next.Font.Google.Strait where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import straitImpl :: forall r. { | r } -> FontConfig

strait :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
strait = straitImpl
