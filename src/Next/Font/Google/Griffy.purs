module Next.Font.Google.Griffy where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import griffyImpl :: forall r. { | r } -> FontConfig

griffy :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
griffy = griffyImpl
