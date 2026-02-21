module Next.Font.Google.Sahitya where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sahityaImpl :: forall r. { | r } -> FontConfig

sahitya :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sahitya = sahityaImpl
